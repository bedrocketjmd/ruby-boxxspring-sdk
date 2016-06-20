module Boxxspring

  class Activity < Base
    field  :id
    field  :property_id
    field  :artifact_id
    field  :subject_id
    field  :subject_type_name
    field  :artifact_locator_id
    field  :completed_at
    field  :state
    field  :message
    field  :execute_at
    field  :expire_at

    has_one :artifact_locator
  end

end