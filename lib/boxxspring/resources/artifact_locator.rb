module Boxxspring
  class ArtifactLocator < Base 
    
    field  :type_name
    field  :id
    field  :created_at
    field  :uploaded_at
    field  :artifact_id
    field  :provider
    field  :provider_url
    field  :provider_uid

    has_one :artifact
    
  end
end