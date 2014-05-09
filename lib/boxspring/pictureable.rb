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

    def picture_by_code_name( code_name )
      picture = self.pictures.detect do | picture | 
        picture.code_name == code_name 
      end
      yield picture if picture.present? && block_given?
      pictures
    end

  end

end
