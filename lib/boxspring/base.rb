module Boxspring

  class Base < ActiveHash::Base

  	def initialize( attributes = {} )
      attributes.symbolize_keys!
      @attributes = attributes
      attributes.dup.each do | key, value |
        send( "#{key}=", value ) if respond_to?( "#{key}=" )
      end
      yield self if block_given?
  	end

  end

end