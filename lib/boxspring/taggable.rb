module Boxspring

  module Taggable

    def tags
      @_tags ||= begin
        self.attributes.include?( :tags ) ? 
          self.attributes[ :tags ].map do | tag |
            Tag.new( tag ) 
          end :
          nil
      end
    end

  end

end