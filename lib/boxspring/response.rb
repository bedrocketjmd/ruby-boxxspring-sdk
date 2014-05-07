module Boxspring

  class Response

    attr_reader :content
    attr_reader :error
    attr_reader :code
    
    def initialize( http_response )

      @code = http_response.code
      @content = decode_response_body( http_response )

      unless @content.nil? || ( error = @content[ 'errors' ] ).nil?

        @error = 
          Boxspring::Error.new( error[ 'message' ] ) 
      
      end
      
      @success = 
        http_response.is_a?( Net::HTTPOK ) && 
        @content &&
        @error.nil?
        
      @error = Boxspring::Error.new( 'unknown' ) \
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