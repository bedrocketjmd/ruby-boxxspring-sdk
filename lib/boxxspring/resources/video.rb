module Boxxspring

  class Video < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :storage_key
    field  :filename
    field  :content_type
    field  :picture_id

    has_many :video_sources
    
  end

end