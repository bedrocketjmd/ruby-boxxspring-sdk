# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path( "../lib", __FILE__ )
require 'boxspring/version'

Gem::Specification.new do | gem |

  gem.version         = Boxspring::VERSION
  gem.license         = 'MS-RL'

  gem.name            = 'boxspring'
  gem.summary         = "Bedrocket Media Ventrures Boxspring property API."
  gem.description     = "The boxspring gem is implements a client to the Bedrocket Media Ventrures Boxspring property API."

  gem.homepage        = "http://bedrocket.com"
  gem.authors         = [ "Kristoph Cichocki-Romanov" ]
  gem.email           = "kristoph@bedrocket.com"

  gem.require_paths  = [ 'lib' ]
  gem.files          = Dir.glob( "{lib}/**/*" )

  gem.add_runtime_dependency( "multi_json", '~> 0' )
  gem.add_runtime_dependency( "active_hash", '~> 0' )

  gem.add_development_dependency( "pry", '~> 0' )

end
