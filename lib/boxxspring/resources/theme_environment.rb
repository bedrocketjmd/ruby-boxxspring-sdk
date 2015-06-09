module Boxxspring

  class ThemeEnvironment < Base

    field     :id

    field     :created_at
    field     :updated_at

    field     :position
    field     :code_name
    field     :name
    field     :description

    field     :uri

    has_one   :user_agent

  end

end
