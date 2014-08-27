module Boxxspring

  class Operation 

    def initialize( path, parameters = {}, result = Array )
      @path = path 
      @parameters = ( parameters || {} ).deep_dup
    end

    def where( parameters )
      self.spawn( parameters )
    end

    def order( by, direction = 'desc' )
      self.spawn( sort_by: by, sort_direction: direction )
    end

    def limit( _limit )
      self.spawn( count: _limit )
    end

    def offset( _offset )
      self.spawn( offset: _offset )
    end

    def query
      result = nil
      Boxxspring::Request.new.tap do | request |
        request.get( @path, @parameters ).tap do | response |
          parser = Boxxspring::Parser.new( response.content )
          result = parser.resources
          result = result.first if result.length > 0 && @result == Object 
        end
      end
      result
    end

    def read 
      result = self.query
      result = result.first if result.present? && result.is_a?( Enumerable )
      result
    end

    protected; def spawn( parameters  )
      Boxxspring::Operation.new( 
        @path,
        @parameters.deep_merge( parameters || {} )
      )
    end

  end

end
