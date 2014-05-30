module Boxspring

  class Card < Base

    field   :created_at
    field   :updated_at

    field   :type_name
    field   :id
    field   :name
    field   :body

    field   :picture_id

    field   :provider
    field   :provider_uid
    field   :provider_url

    field   :properties

    def show
      @_show ||= begin
        self.attributes.include?( :show ) ?
          Show.new( self.attributes[ :show ] ) :
          nil
      end
    end

	end

end
