module Boxxspring

	class ThemeEnvironment < Base

    field     :id

    field     :created_at
    field     :updated_at

    field     :order
    field     :code_name
    field     :name
    field     :description

    field     :uri

    has_one   :user_agent

    has_many  :errors

	end

end