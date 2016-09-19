module Boxxspring

  class VideoReference < Base

    field  :id
    field  :type_name
    field  :created_at
    field  :updated_at
    field  :picture_id   

    has_many :video_source_references

  end

end
