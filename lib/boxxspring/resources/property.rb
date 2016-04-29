module Boxxspring

  class Property < Base

    field   :id
    field   :realm_uuid

    field   :created_at
    field   :updated_at
    field   :destroyed_at

    field   :name
    field   :code_name
    field   :domain_name

    field   :meta_description
    field   :meta_title

    field   :authentication_enabled,         default: false
    field   :authentication_username
    field   :authorization_password

    has_many  :groups
    has_many  :pages
    has_many  :pictures

    has_one   :theme
    has_one   :default_advertisement

    has_many  :services
    has_many  :settings
    def settings_content_by_name( name, default_result = nil )
      setting = self.settings.detect { | setting | setting.name == name }
      result = setting.nil? ? default_result : setting.content 

      # convert the result to boolean when boolean
      result = true if result =~ ( /(true)$/i )
      result = false if result =~ ( /(false)$/i )

      result 
    end

    has_many  :errors

    def operation( path )
      Boxxspring::Operation.new( File.join( '/properties', self.id.to_s, path ) )
    end

  end

end
