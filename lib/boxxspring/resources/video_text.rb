module Boxxspring

  class VideoText < Base

    field   :created_at
    field   :updated_at

    field   :id
    field   :filename
    field   :storage_key
    field   :size
    field   :content_type

    field   :kind
    field   :language
    field   :label

    field   :video_id
    has_one :video

  end

end
