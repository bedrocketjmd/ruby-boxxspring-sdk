module Boxxspring

  class DailymotionChannelService < SocialService 
    field :refresh_token
    field :description
    field :thumbnail_url
    field :content_owner_id
    field :content_owner_display_name
  end

end