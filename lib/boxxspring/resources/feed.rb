module Boxxspring

  class Feed < Base

    field   :created_at
    field   :updated_at
    field   :generated_at

    field   :provider
    field   :id
    field   :name
    field   :code_name

    field   :time_to_live
    field   :media_type
    field   :media_player
    field   :media_provider

    has_one :filter

  end

end
