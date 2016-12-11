require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Freelancers
  class Application < Rails::Application
  	# Comentado para o scaffold nao usar o neo4j pra criar tabelas
  	#config.generators do |g|
    #  g.orm             :neo4j
    #end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
