module Boxxspring

	class Theme < Base

    field     :type_name
    field     :id
    field     :code_name 
    field     :name 

    field     :default_javascript_uri
    field     :default_stylesheet_uri

    has_many  :environments

	end

end