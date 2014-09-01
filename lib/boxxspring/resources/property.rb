module Boxxspring

	class Property < Base

    field   :type_name
    field   :id

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
    field   :authentication_password

    has_many  :groups
    has_many  :pages
    has_many  :services
    has_many  :pictures
    has_one   :theme

    def operation( path )
      Boxxspring::Operation.new( File.join( '/properties', self.id.to_s, path ) )
    end

	end

end
