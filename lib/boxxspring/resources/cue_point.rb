module Boxxspring

  class CuePoint < Base
    field  :id
    field  :video_id
    field  :timecode

    has_one :video
  end

end