module Boxxspring

  class Operation 

    def initialize( path )
      @path = path 
      @parameters = {}
    end

    def query
      result = nil
      Boxxspring::Request.new.tap do | request |
        request.get( @path ).tap do | response |
          parser = Boxxspring::Parser.new( response.content )
          result = parser.resources
        end
      end
      result
    end

  end

end