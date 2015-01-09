module Boxxspring

  class VideoSourceSegment < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :video_source_id
    field  :storage_key
    field  :name
    field  :content_type
    field  :width
    field  :height

    has_many  :errors

  end

end
