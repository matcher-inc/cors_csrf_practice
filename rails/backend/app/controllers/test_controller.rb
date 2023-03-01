class TestController < ApplicationController
  after_action :set_csrf_token_header, only: [:csrf_token_api]
  skip_before_action :verify_authenticity_token
  def get_api
    render json: :ok
  end

  def post_api
    puts request
    render json: :ok
  end

  def csrf_token_api 
    render json: :ok
  end
end
