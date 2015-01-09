module Boxxspring

  class Picture < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :code_name
    field  :storage_key
    field  :filename
    field  :content_type
    field  :size

    has_many  :errors

  end

end
