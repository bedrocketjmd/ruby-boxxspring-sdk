module Boxxspring

  class Response

    attr_reader :code
    attr_reader :body
    attr_reader :resources 
    
    def initialize( http_response )

      @success = http_response.is_a?( Net::HTTPOK )

      @code = http_response.code
      @resources = []

      content = decode_response_body( http_response )
      if ( content && content.respond_to?( :keys ) )
        Boxxspring::Parser.new( content ) do | parser |
          @resources = parser.resources
          @success = !parser.type_name?( :error )
        end
      else
        @success = false
        @resources << Boxxspring::Error.new( 
          message: "An unknown error occured (#{@code})."
        )
      end
      @body = content
                      
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