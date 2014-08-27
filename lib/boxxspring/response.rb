module Boxxspring

  class Response

    attr_reader :content
    attr_reader :error
    attr_reader :code
    
    def initialize( http_response )

      @code = http_response.code
      @content = decode_response_body( http_response )
      error = @content.respond_to?( :keys ) ? @content[ 'errors' ] : nil

      if @content.respond_to?( :include? ) && @content.include?( 'errors' )
        @error = 
          Boxxspring::Error.new( @content[ 'errors' ][ 'message' ] ) 
      end
      
      @success = 
        http_response.is_a?( Net::HTTPOK ) && 
        @content.present? &&
        @error.nil?
        
      @error = Boxxspring::Error.new( 'unknown' ) \
        if !@success && @error.nil?
        
    end

    def success?
      @success
    end
    
    def failure?
      not @success
    end
    
    protected; def decode_response_body( http_response )
    
      response = nil
      
      body = http_response.body; 
      unless body.nil? || body.empty?
        response = 
          MultiJson.decode( http_response.body ) rescue nil
      end
      
      response
      
    end

  end
  
end