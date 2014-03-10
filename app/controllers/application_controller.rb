class ApplicationController < ActionController::API
  def count
    render json: { count: $redis.incr('counter:count') }
  end

  def secret
    render json: { secret: Rails.application.secrets.example }
  end
end
