module Boxxspring

  class SocialService < Base
    field :type_name
    field :id
    field :created_at
    field :updated_at
    field :provider_uid
    field :name
    field :display_name
    field :thumbnail_url
    field :access_token
    field :expires_at
  end

end
