module Boxspring

	class TagCollection < Base

    field  :created_at 
    field  :updated_at 

    field  :id 
    field  :code_name 
    field  :name 

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