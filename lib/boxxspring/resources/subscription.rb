module Boxxspring

  class Subscription < Base

    field   :created_at
    field   :updated_at

    field   :id
    field   :type_name
    field   :name
    field   :provider
    field   :last_polled_at
    field   :time_to_live

    field   :auto_publish
    field   :url
    field   :state

    has_many  :artifacts

    has_many  :errors

  end

end
