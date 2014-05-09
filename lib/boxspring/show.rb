module Boxspring

  class Show < Base

    include Taggable

    field  :created_at
    field  :updated_at
    field  :published_at

    field  :id
    field  :name
    field  :short_description
    field  :description
    field  :schedule

    field  :picture_large_id
    field  :picture_medium_id
    field  :picture_small_id

    field :stories_count

    field  :meta_description
    field  :meta_title

    field  :slug
    field  :status

    def private=( _private )
      @_private = ( ( _private == true ) || ( _private =~ /true/i ) ) || false
    end

    def private
      @_private || false
    end

	end

end
