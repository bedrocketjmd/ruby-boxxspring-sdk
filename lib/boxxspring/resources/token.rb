module Boxxspring

  class Token < Base

      field       :type_name
      field       :id
      field       :uuid

      field       :created_at
      field       :updated_at
      field       :expires_at

      field       :property_id
      field       :subject_type_name
      field       :subject_id
      
      has_one    :subject

  end

end