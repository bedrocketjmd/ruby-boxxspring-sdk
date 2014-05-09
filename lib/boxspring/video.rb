module Boxspring

  class Video < Base

    include Taggable

    field  :created_at
    field  :updated_at
    field  :uploaded_at
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

    field  :picture_id

    field  :meta_description
    field  :meta_title
    field  :slug

    field  :show_id
    field  :show_episode
    field  :show_season

    field  :provider
    field  :provider_uid
    field  :provider_title
    field  :provider_description
    field  :provider_url

    field  :duration
    field  :action_participations_count
    field  :react_actions_counts
    field  :views_count

    def show
      @_show ||= begin
        self.attributes.include?( :show ) ?
          Show.new( self.attributes[ :show ] ) :
          nil
      end
    end

	end

end
