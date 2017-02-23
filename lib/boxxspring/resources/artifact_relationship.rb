module Boxxspring
  class ArtifactRelationship < Base 
    
    field  :type_name
    field  :id
    field  :created_at
    field  :uploaded_at
    field  :related_artifact_id
    field  :related_artifact_position
    field  :artifact_id
    field  :artifact_position
    field  :name
    field  :property_id

    has_one :artifact
    has_one :related_artifact
  end
end