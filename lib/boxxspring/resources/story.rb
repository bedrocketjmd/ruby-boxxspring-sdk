module Boxxspring
  class Story < Artifact

    has_many :attributions
    has_one  :authors
    has_one  :theme_template

  end
end
