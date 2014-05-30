module Boxspring

	class Property < Base

    include Pictureable

	  def self.find_by( parameters )

      # filter only acceptable parameters
      parameters = parameters.stringify_keys.slice(
        'code_name', 'domain_name'
      )

      # translate attribute names to property identification paramaters
      parameters[ 'property_code' ] = parameters.delete( 'code_name' ) \
        if parameters.include?( 'code_name' )
      parameters[ 'property_domain_name' ] = parameters.delete( 'domain_name' ) \
        if parameters.include?( 'domain_name' )

      # create and make the request
	  	request = Request.new( parameters )
	  	response = request.get( '/configuration' )

      # did the api request succeed
      if ( response.success? )
        # construct a property; assign it the api interface
        Property.new( response.content ).tap do | property |
          property.instance_variable_set( '@api_interface', request )
        end
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end

	  end

	  field  :created_at
	  field  :updated_at
	  field  :destroyed_at

	  field  :name
	  field  :code_name
	  field  :domain_name

	  field  :meta_description
	  field  :meta_title

    field  :authentication_enabled,         default: false
    field  :authentication_username
    field  :authentication_password

    def theme
      @_theme ||= begin
        self.attributes.include?( :theme ) ?
          Theme.new( self.attributes[ :theme ] ) :
          nil
      end
    end

    def services
      @_services ||= begin
        self.attributes.include?( :services ) ?
          self.attributes[ :services ].map do | service |
            Service.new( service )
          end :
          nil
      end
    end

    def service_by_provider( provider )
      self.services.detect { |service| service.provider == provider }
    end

    def pages( parameters = {} )
      @pages ||= begin
        self.attributes.include?( :pages ) ?
          self.attributes[ :pages ].map do | page |
            Page.new( page )
          end :
          nil
      end
    end

    def page_by_code_name( code_name )
      self.pages.detect { |page| page.code_name == code_name }
    end

    def tag_collections( reload = false )
      @_tag_collections ||= begin
        self.attributes.include?( :tag_collections ) ?
          self.attributes[ :tag_collections ].map do | tag_collection |
            TagCollection.new( tag_collection )
          end :
          nil
      end
    end

    def tag_by_id( id )
      response = @api_interface.get( "/tags/#{id}" )
      if ( response.success? )
        Tag.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def show_by_id( id )
      response = @api_interface.get( "/shows/#{id}" )
      if ( response.success? )
        Show.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def shows
      @_shows ||= begin
        self.attributes.include?( :shows ) ?
          self.attributes[ :shows ].map do | _show |
            Show.new( _show )
          end :
          nil
      end
    end

    def attribution_by_id( id, parameters = {} )
      response = @api_interface.get( "/attributions/#{id}", parameters )
      if ( response.success? )
        Attribution.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def reaction_by_id( id )
      response = @api_interface.get( "/reactions/#{id}" )
      if ( response.success? )
        Reaction.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def stories( parameters = {} )
      response = @api_interface.get( "/stories", parameters )
      if ( response.success? )
        response.content.map do | story |
          Story.new( story )
        end
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def shows_stories( parameters = {} )
      response = @api_interface.get( "/shows/stories", parameters )
      if ( response.success? )
        response.content.map do | story |
          Story.new( story )
        end
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def story_by_id( id )
      response = @api_interface.get( "/stories/#{id}" )
      if ( response.success? )
        Story.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

	end

end
