require 'singleton'

module Boxxspring

  def self.configuration( &block )
    Configuration.instance().instance_eval( &block ) unless block.nil?
    Configuration.instance()
  end

  class Configuration

    include Singleton

    def self.reloadable?
      false
    end

    def self.define_attribute( attribute_name, options = {} )
      
      class_eval(
        "def #{attribute_name}( *arguments ); " +
           "@#{attribute_name} = arguments.first unless arguments.empty?; " +
           "@#{attribute_name} || " +
             ( options[ :default ].nil? ?
                "nil" :
                ( options[ :default ].is_a?( String ) ? 
                    "'#{options[ :default ]}'" : 
                      "#{options[ :default ]}" ) ) + ";" +
        "end",
        __FILE__, 
        __LINE__
      )
    end

    # the api uri
    define_attribute :api_uri,      default: 'http://api-staging.bedrocketplatform.com/'
  
    def from_hash( configuration )
  
      configuration.each_pair do | name, value |
        self.instance_variable_set( "@#{name}", value )
      end
        
    end

  end

end
