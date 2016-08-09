module Boxxspring

  class AdvertisingCampaign < Base
    field  :id
    field  :property_id
    field  :name
    field  :url_pattern
    field  :filter_id
    field  :video_advertisement_id
    field  :display_advertisement_id
    field  :state
    field  :position
    field  :published_at

    has_one  :video_advertisement
    has_one  :display_advertisement
    has_one  :filter
  end

end