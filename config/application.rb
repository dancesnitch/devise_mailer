require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeviseMailer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end

require 'rugged'
require 'linguist'

	repo = Rugged::Repository.new('.')
	project = Linguist::Repository.new(repo, repo.head.target_id)
	project.language       #=> "Ruby"
	project.languages      #=> { "Ruby" => 119387 }
	end
end
