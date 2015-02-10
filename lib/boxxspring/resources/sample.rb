module Boxxspring
  class Sample < Base

    field     :id

    field     :created_at
    field     :updated_at

    field     :type_name
    field     :at
    field     :sum
    field     :average
    field     :count
    field     :median

    field     :metric_id
    field     :artifact_id

    has_one   :metric
    has_one   :artifact

  end
end
