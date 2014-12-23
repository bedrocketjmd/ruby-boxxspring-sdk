module Boxxspring

  class VideoSourceSegment < Base

    field  :created_at
    field  :updated_at

    field  :storage_key
    field  :name
    field  :content_type
    field  :width
    field  :height

    has_one :video_source

  end

end
