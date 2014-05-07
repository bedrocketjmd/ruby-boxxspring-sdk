module Boxspring

	class Theme < Base

    field  :id 
    field  :code_name 
    field  :name 

    field  :default_javascript_uri
    field  :default_stylesheet_uri

    def environments( reload = false )
      @_environments ||= begin
        self.attributes.include?( :environments ) ? 
          self.attributes[ :environments ].map do | environment |
            ThemeEnvironment.new( environment ) 
          end :
          nil
      end
    end

	end

end