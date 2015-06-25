module Boxxspring

  class Source < Base

    field   :created_at
    field   :updated_at

    field   :id
    field   :type_name
    field   :name
    field   :provider
    field   :last_polled_at
    field   :time_to_live

    field   :original

    field   :auto_publish
    field   :source_url

    has_many  :artifacts

    has_many  :errors

  end

end
