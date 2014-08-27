module Boxxspring

  class Base

    def self.field( name, options = {} )
      
      class_eval(
        "def #{name}(); " +
           "@#{name} || " +
             ( options[ :default ].nil? ?
                "nil" :
                ( options[ :default ].is_a?( String ) ? 
                    "'#{options[ :default ]}'" : 
                      "#{options[ :default ]}" ) ) + ";" +
        "end;" +
        " " +
        "attr_writer :#{name};",
        __FILE__, 
        __LINE__
      )

    end

    def self.has_one( name, options = {} )
      define_method name do 
        associations = self.instance_variable_get( "@_#{name.to_s.pluralize}" )
        associations.present? ? associations.first : options[ :default ]
      end
    end

    def self.has_many( name, options = {} )  
      define_method name do 
        self.instance_variable_get( "@_#{name}" ) || options[ :default ] || []
      end
    end

  	def initialize( attributes = {}, associations = {} )
      attributes.symbolize_keys!
      @attributes = attributes
      attributes.dup.each do | key, value |
        send( "#{key}=", value ) if respond_to?( "#{key}=" )
      end
      associations.each do | key, value |
        self.instance_variable_set( "@_#{key}", value )
      end
      yield self if block_given?
  	end

  end

end