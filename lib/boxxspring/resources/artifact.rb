module Boxxspring

  class Artifact < Base

    field     :id

    field     :created_at
    field     :updated_at
    field     :edited_at
    field     :published_at
    field     :originated_at

    field     :state
    field     :original
    field     :uid
    field     :property_id

    field     :name
    field     :short_description
    field     :description
    field     :note
    field     :meta_description
    field     :meta_title
    field     :slug
    field     :template

    field     :provider
    field     :provider_uid
    field     :provider_url
    field     :attribution_name
    field     :attribution_url

    field     :attribution_id
    field     :artifact_ids
    field     :picture_id
    field     :sponsor_id
    field     :template_id
    field     :sponsor_id

    has_one   :attribution

    has_many  :artifacts
    has_many  :pictures
    has_many  :sponsors
    has_many  :advertisements
    has_many  :artifact_locators

  end

end
