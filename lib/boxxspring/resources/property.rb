module Boxxspring

	class Property < Base

	  field  :created_at
	  field  :updated_at
	  field  :destroyed_at

	  field  :name
	  field  :code_name
	  field  :domain_name

	  field  :meta_description
	  field  :meta_title

    field  :authentication_enabled,         default: false
    field  :authentication_username
    field  :authentication_password

    has_many  :pictures
    has_one   :theme

	end

end
