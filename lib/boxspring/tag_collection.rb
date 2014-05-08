module Boxspring

	class TagCollection < Base

    include Taggable

    field  :created_at 
    field  :updated_at 

    field  :id 
    field  :code_name 
    field  :name 

	end

end