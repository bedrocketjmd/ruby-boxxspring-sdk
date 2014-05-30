module Boxspring

  class Story < Base

    include Taggable

    field  :created_at
    field  :updated_at
    field  :edited_at
    field  :published_at
    field  :featured_at

    field  :status
    field  :original
    field  :publishing_sequence

    field  :type_name
    field  :id
    field  :name
    field  :tagline
    field  :short_description
    field  :description

    field  :content_type
    field  :content_id

    field  :picture_id

    field  :meta_description
    field  :meta_title
    field  :slug

    field  :show_id
    field  :show_episode
    field  :show_season

    field  :action_participations_count
    field  :react_actions_counts

    def content
      @_content ||= begin
        content_class = Boxspring.const_get( self.content_type ) \
          rescue nil
        content_class ? 
          content_class.new( self.attributes[ :content ] ) :
          nil    
      end
    end

    def show
      @_show ||= begin
        self.attributes.include?( :show ) ?
          Show.new( self.attributes[ :show ] ) :
          nil
      end
    end

	end

end
