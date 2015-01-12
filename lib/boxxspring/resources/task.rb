module Boxxspring

  class Task < Base

    field   :created_at
    field   :updated_at

    field   :id
    field   :property_id

    field   :state
    field   :started_at
    field   :ended_at

    has_one :property

  end

end
