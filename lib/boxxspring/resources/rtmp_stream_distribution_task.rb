module Boxxspring

  class RtmpStreamDistributionTask < Task
    field   :distribution_id
    field   :stream_url
    field   :stream_key
    field   :authentication_username
    field   :authentication_password
  end

end
