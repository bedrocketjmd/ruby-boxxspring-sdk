module Boxxspring
  class Metric < Base

    field     :id

    field     :created_at
    field     :updated_at

    field     :type_name
    field     :name
    field     :period
    field     :segment

    has_many   :samples

  end
end
