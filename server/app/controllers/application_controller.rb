# class ApplicationController < ActionController::API
class ApplicationController < ActionController::Base
  include Knock::Authenticable

  protect_from_forgery with: :exception

  rescue_from StandardError do |exception|
    render json: {
      status: 500,
      title: 'Internal server error'
    }, status: 500
    throw exception
  end
end
