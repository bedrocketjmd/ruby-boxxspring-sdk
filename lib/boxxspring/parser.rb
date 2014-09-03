module Boxxspring

  class Parser

    def initialize( content = {} )
      @content = content
    end

    def name 
      @content.include?( '$this' ) ?
        @content[ '$this' ][ 'name' ] :
        nil
    end

    def type_name 
      @content.include?( '$this' ) ?
        @content[ '$this' ][ 'name' ] :
        nil
    end

    def key
      'id' 
    end

    def keys 
      @content.include?( '$this' ) ?
        @content[ '$this' ][ 'ids' ] :
        nil
    end

    def associations  
      @content.include?( '$associations' ) ?
        @content[ '$associations' ] :
        nil
    end

    def resources
      result = nil
      unless self.name.blank?
        result = self.keys.map { | key | self.resource_by( name, key ) }
      end
      result
    end

    def resource_by( name, key )
      @resources_index ||= Hash.new { | hash, key | hash[ key ] = {} }
      @resources_index[ name ][ key ] ||= begin
        result = nil
        resource_attributes = resource_attribute_index[ name ][ key ]
        if resource_attributes.present? 
          type_name = resource_attributes.delete( 'type_name' ) || self.type_name
          klass = Boxxspring.const_get( type_name.classify ) rescue nil
          if klass.present?
            result = klass.new( 
              resource_attributes, 
              self.resource_associations_by( name, key ) 
            )
          end
        end
        result 
      end
    end

    def resource_associations_by( name, key )
      result = Hash.new { | hash, key | hash[ key ] = [] }
      associations = self.associations
      if associations && associations.include?( name )
        association = associations[ name ].detect do | association |
          association[ 'id' ] == key 
        end
        if association.present?
          association.each do | key, value |
            unless key == 'id'
              result[ key ] = value.map do | associated_id |
                self.resource_by( key, associated_id )
              end
              result[ key ].compact!
            end
          end
        end
      end 
      result     
    end

    def resource_attribute_index 
      @resource_attribute_index ||= begin 
        index = Hash.new { | hash, key | hash[ key ] = {} }
        @content.each do | key, resources_attributes |
          unless key[0] == '$'
            resources_attributes.each do | resource_attributes |
              index[ key ][ resource_attributes[ 'id' ] ] = resource_attributes
            end
          end
        end
        index
      end
    end

  end

end
