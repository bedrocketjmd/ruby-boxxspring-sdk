# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path( "../lib", __FILE__ )
require 'boxxspring/version'

Gem::Specification.new do | gem |

  gem.version         = Boxxspring::VERSION
  gem.license         = 'MS-RL'

  gem.name            = 'boxxspring'
  gem.summary         = "Bedrocket Media Ventrures Boxxspring property API."
  gem.description     = "The boxxspring gem is implements a client to the Bedrocket Media Ventrures Boxxspring property API."

  gem.homepage        = "http://bedrocket.com"
  gem.authors         = [ "Kristoph Cichocki-Romanov" ]
  gem.email           = "kristoph@bedrocket.com"

  gem.require_paths  = [ 'lib' ]
  gem.files          = Dir.glob( "{lib}/**/*" )

  gem.add_runtime_dependency( "multi_json", "~> 1" )
  gem.add_runtime_dependency( "activesupport", "~> 4.0" )
  gem.add_runtime_dependency( "addressable" )

  gem.add_development_dependency( "pry", ">= 0.10.1" )

end
