module Boxxspring

  class DistributionOperation < Base
    field  :id
    field  :property_id
    field  :artifact_id
    field  :distribution_id
    field  :artifact_locator_id
    field  :completed_at
    field  :state
    field  :message

    has_one :distribution
  end

end