module Boxxspring

	class Theme < Base

    field     :id 
    field     :code_name 
    field     :name 

    field     :default_javascript_uri
    field     :default_stylesheet_uri

    has_many  :theme_environments

	end

end