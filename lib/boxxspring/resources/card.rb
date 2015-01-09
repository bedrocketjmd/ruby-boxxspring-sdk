module Boxxspring

  class Card < Base

    field   :created_at
    field   :updated_at

    field   :id
    field   :name
    field   :body

    field   :picture_id

    field   :provider
    field   :provider_uid
    field   :provider_url

    field   :properties

  end

end
