module Boxxspring

  class Artifact < Base

    field  :type_name
    field  :id

    field  :created_at
    field  :updated_at
    field  :edited_at
    field  :published_at

    field  :state
    field  :original

    field  :name
    field  :short_description
    field  :description
    field  :note

    field  :picture_id

    field  :meta_description
    field  :meta_title
    field  :slug
    
    field  :sponsor_id
    field  :template_id

    has_one   :attribution 

    has_many  :artifacts
    has_many  :pictures
    has_many  :cards  
    has_many  :sponsors 

	end

end
