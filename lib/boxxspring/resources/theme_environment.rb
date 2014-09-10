module Boxxspring

	class ThemeEnvironment < Base

    field     :type_name
    field     :id

    field     :created_at
    field     :updated_at

    field     :order
    field     :code_name
    field     :name
    field     :description

    field     :uri

    has_one   :user_agent

	end

end