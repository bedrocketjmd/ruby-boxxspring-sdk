module Boxxspring

  class Filter < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :uuid
    field  :operator
    field  :property_id

    has_many :filter_criteria

  end

end
