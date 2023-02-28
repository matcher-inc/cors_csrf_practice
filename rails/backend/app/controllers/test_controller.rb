class TestController < ApplicationController
  def get_csrf_token
    response.set_header('X-CSRF-Token', form_authenticity_token)
    render json: :ok
  end

  def get_api
    render json: :ok
  end

  def post_api
    render json: :ok
  end
end
