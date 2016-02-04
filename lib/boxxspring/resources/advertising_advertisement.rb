module Boxxspring

  class AdvertisingAdvertisement < Base
    field  :id
    field  :property_id
    field  :name
    field  :created_at
    field  :updated_at
  end

  class VideoAdvertisement < AdvertisingAdvertisement
  end

  class DisplayAdvertisement < AdvertisingAdvertisement
  end

end