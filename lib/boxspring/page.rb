module Boxspring

  class Page < Base

    field  :created_at
    field  :updated_at

    field  :id
    field  :code_name
    field  :name
    field  :body
    field  :slug
    field :meta_description
    field :meta_title

  end

end
