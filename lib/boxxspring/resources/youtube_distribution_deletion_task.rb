module Boxxspring

  class YoutubeDistributionDeletionTask < Task
    field   :distribution_id
    field   :youtube_broadcast_id
    field   :youtube_stream_id
    field   :distribution_artifact_locator_id
  end

end
