module Boxxspring

  class VideoSource < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :video_id
    field  :storage_key
    field  :name
    field  :content_type
    field  :width
    field  :height

    has_many :video_source_segments

  end

end
