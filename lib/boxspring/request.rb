require 'net/https'
require 'addressable/uri'

module Boxspring

  class Request

    def initialize( default_parameters = {} )
  
      # parse the API uri
      uri = URI.parse( Boxspring.configuration.api_uri )

      # construct http request
      @http = Net::HTTP.new( uri.host, uri.port )
      
      # use ssl when https is the uri scheme                       
      @http.use_ssl = ( uri.scheme == 'https' )
      @http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      # retain the default parameters 
      @default_parameters = default_parameters.stringify_keys
  
    end

    def get( path, parameters = {} )
  
      response = nil
      
      begin  
        
        response = 
          Response.new( @http.get( compose_request_path( path, parameters ) ) )
        
      rescue Timeout::Error
        response = nil
      end
        
      response
                      
    end

    def post( path, parameters = {} )
  
      response = nil
      
      begin  
        
        data = []
        
        parameters.each_pair do | key, value |
          data << "#{key.to_s}=#{value.to_s}"
        end
        
        response = 
          Response.new( 
            @http.post( 
              compose_request_path( path ),  
              data.join( '&' ) 
            ) 
          )
        
      rescue Timeout::Error
        response = nil
      end
        
      response
                      
    end

    protected; def compose_request_path( path, parameters = {} )

      addressable = Addressable::URI.new
      
      addressable.path = path 
      addressable.query = 
        @default_parameters.merge( parameters.stringify_keys ).to_param

      addressable.to_s

    end

  end

end
