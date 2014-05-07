module Boxspring

	class ThemeEnvironment < Base

    field   :created_at
    field   :updated_at

    field   :code_name
    field   :name
    field   :description

    field   :uri

    def user_agent
      @_user_agent ||= begin
        self.attributes.include?( :user_agent ) ? 
          UserAgent.new( self.attributes[ :user_agent ] ) :
          nil
      end
    end

	end

end