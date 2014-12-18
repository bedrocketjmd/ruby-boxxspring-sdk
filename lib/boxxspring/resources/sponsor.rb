module Boxxspring

  class Sponsor < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :name
    field  :picture_id

    has_many :artifacts

  end

end
