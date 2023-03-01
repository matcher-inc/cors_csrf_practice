Rails.application.routes.draw do
  get '/get_api' => 'test#get_api'
  post '/post_api' => 'test#post_api'
  get "/csrf_api" => "test#csrf_token_api"
end
