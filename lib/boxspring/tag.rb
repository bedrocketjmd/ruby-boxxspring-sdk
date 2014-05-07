module Boxspring

	class Tag < Base

    field  :created_at 
    field  :updated_at 

    field  :id 
    field  :code_name 
    field  :canonical_name
    field  :name 
    field  :slug

    field  :picture_id

    def private=( _private )
      @_private = ( ( _private == true ) || ( _private =~ /true/i ) ) || false
    end

    def private
      @_private || false 
    end

	end

end