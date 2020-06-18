require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # 不要なファイルを作成しないようにする
    config.generators do |g|
      g.test_framework :rspec,
      # ビュースペックを作成しない
      view_specs: false,
      # ヘルパーファイル用のスペックを作成しない
      helper_specs: false,
      #  config/routes.rb 用のスペックファイルの作成を省略
      routing_specs: false
    end
  end
end
