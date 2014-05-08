module Boxspring

  module Pictureable

    def pictures
      @_pictures ||= begin
        self.attributes.include?( :pictures ) ?
          self.attributes[ :pictures ].map do | picture |
            Picture.new( picture )
          end :
          nil
      end
    end

    def picture_by_code_name(code_name)
      self.pictures.detect{ |picture| picture.code_name == code_name }
    end

  end

end
