module Boxspring

  class Attribution < Base

    include Taggable

    field  :created_at
    field  :updated_at

    field  :id
    field  :name
    field  :url
    field :stories_count
    field :pictures

    field  :slug

	end

end
