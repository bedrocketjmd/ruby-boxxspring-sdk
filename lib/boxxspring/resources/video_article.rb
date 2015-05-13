module Boxxspring
  class VideoArticle < Artifact

    has_many :attributions
    has_one  :authors
    has_one  :theme_template
    has_one  :advertisement

  end
end
