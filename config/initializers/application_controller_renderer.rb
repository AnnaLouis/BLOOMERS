# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
end
