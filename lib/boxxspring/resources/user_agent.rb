module Boxxspring

	class UserAgent < Base

    field  :id

    field  :name 
    field  :pattern

    has_many  :errors

	end

end