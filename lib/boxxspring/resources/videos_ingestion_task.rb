module Boxxspring

  class VideosIngestionTask < Task

    field   :name
    field   :description
    field   :tags
    field   :originated_at
    field   :note
    field   :provider
    field   :provider_uid
    field   :provider_url
    field   :video_file_url
    field   :picture_file_url
    field   :alternate_provider
    field   :alternate_provider_url
    field   :auto_publish
    field   :artifact_id
    field   :artifact_type_name
    field   :categories
    field   :category_ids

  end

end
