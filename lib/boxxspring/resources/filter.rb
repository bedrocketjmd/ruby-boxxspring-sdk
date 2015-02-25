module Boxxspring

  class Filter < Base

    field  :created_at
    field  :updated_at

    field  :id

    has_many :filter_criteria

  end

end
