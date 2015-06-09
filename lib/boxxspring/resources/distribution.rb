module Boxxspring
  class Distribution < Base 
    
    field  :type_name
    field  :id
    field  :property_id
    field  :created_at
    field  :uploaded_at
    field  :name
    field  :service_id
    field  :branding_rule_id

    has_one :service
    has_one :branding_rule
    
  end
end