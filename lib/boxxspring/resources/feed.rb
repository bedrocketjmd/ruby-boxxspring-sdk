module Boxxspring

  class Feed < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :name
    field  :code_name
    field  :generated_at
    field  :filter_id

    has_one :filter

  end

end
