module Boxxspring

  class VideosCurationTask < Task

    field   :video_title
    field   :video_description
    field   :video_picture_url
    field   :video_provider_uid
    field   :video_originated_at
    field   :provider_url
    field   :provider
    field   :attribution_name
    field   :attribution_provider_uid
    field   :attribution_picture_url

  end

end