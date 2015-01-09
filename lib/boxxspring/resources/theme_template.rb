module Boxxspring

  class ThemeTemplate < Base
    field     :code_name

    has_many  :errors
  end

end