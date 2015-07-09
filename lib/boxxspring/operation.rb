module Boxxspring

  class Operation 

    def initialize( path, parameters = {}, result = Array )
      @path = path 
      @parameters = ( parameters || {} ).deep_dup
    end

    def where( parameters )
      self.spawn( parameters )
    end

    def destroy
      result = nil
      Boxxspring::Request.new.tap do | request |
        response = request.destroy( @path, @parameters )
        if response.present?
          result = response.resources
        end
      end
      result
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

    def include( *arguments )
      self.spawn( :include => self.normalize_include( *arguments ) )
    end

    def query
      result = nil
      Boxxspring::Request.new.tap do | request |
        request.get( @path, @parameters ).tap do | response |
          result = response.resources
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

    def write( node, objects ) 
      result = nil
      Boxxspring::Request.new.tap do | request |
        serializer = Boxxspring::Serializer.new( objects )
        response = request.post( @path, @parameters, serializer.serialize( node ) )
        if response.present?
          result = response.resources
        end
      end
      result
    end

    protected; def spawn( parameters  )
      Boxxspring::Operation.new( 
        @path,
        @parameters.deep_merge( parameters || {} )
      )
    end

    protected; def normalize_include( *arguments )

      includes = {};
      arguments.each do | argument |
        case argument
        when Array
          argument.each do | value  |
            includes.deep_merge!( self.normalize_include( value ) )
          end
        when Hash 
          argument.each do | key, value |
            if !includes.include?( key ) || includes[ key ] === true 
              includes[ key ] = self.normalize_include( value )
            else
              includes[ key ].deep_merge!( self.normalize_include( value ) )
            end
          end
        else 
          includes[ argument ] = true
        end
      end
      includes 

    end

  end

end
