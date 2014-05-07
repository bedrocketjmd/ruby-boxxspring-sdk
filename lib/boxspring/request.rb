require 'net/https'

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
          Response.new( @http.post( compose_request_path( path ),  
                                    data.join( '&' ) ) )
        
      rescue Timeout::Error
       
        response = nil
        
      end
        
      response
                      
    end

    protected; def compose_request_path( path, parameters = {} )
    
      # the query
      query = ""

      # url encode the parameters
      ( @default_parameters.merge( parameters.stringify_keys ) ).each do | key, value |
        query << "#{key}=#{value}&"
      end
    
      # chop the trailing '&'
      query.chop!
    
      # does path include parameters?
      unless path.include?( '?' )
        # if not, append the query to the url
        path = path + '?' + query
      else
        # if so, append the query to the existing query 
        path = path + '&' + query
      end        
      
      path
    
    end

  end

end
