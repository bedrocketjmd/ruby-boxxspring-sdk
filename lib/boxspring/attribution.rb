module Boxspring

  class Attribution < Base

    include Taggable
    include Pictureable

    field  :created_at
    field  :updated_at

    field  :id
    field  :name
    field  :url
    field :stories_count
    field :pictures
    field :picture_id

    field  :slug

	end

end
