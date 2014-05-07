module Boxspring

	class Property < Base

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

      # create and make the request; raise an error if one occurs
	  	request = Request.new( parameters )
	  	response = request.get( '/configuration' )
	  	raise response.error if response.failure?

      # construct a property; retain the request an apu interface
	  	Property.new( response.content ).tap do | property |
	  	  property.instance_variable_set( '@api_interface', request )
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

    def theme
      @_theme ||= begin
        self.attributes.include?( :theme ) ? 
          Theme.new( self.attributes[ :theme ] ) :
          nil
      end
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
          self.attributes[ :shows ].map do | show |
            Show.new( show ) 
          end :
          nil
      end
    end

    def attribution_by_id( id )
      response = @api_interface.get( "/attributions/#{id}" )
      if ( response.success? )
        Attribution.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

    def videos( parameters )
      response = @api_interface.get( "/videos", parameters )
      if ( response.success? )
        response.content.map do | video |
          Video.new( video )
        end
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end      
    end

    def video_by_id( id )
      response = @api_interface.get( "/videos/#{id}" )
      if ( response.success? )
        Video.new( response.content )
      elsif ( response.code == '404' )
        nil
      else
        raise response.error
      end
    end

	end

end