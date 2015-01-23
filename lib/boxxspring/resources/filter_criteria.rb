module Boxxspring

  class FilterCriteria < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :filter_id
    field  :condition

    has_many :artifacts

  end

end
