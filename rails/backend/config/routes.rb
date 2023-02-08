Rails.application.routes.draw do
  get '/get_api' => 'test#get_api'
  post '/post_api' => 'test#post_api'
end
