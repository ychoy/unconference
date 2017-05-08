Rails.application.routes.draw do
  namespace :api do
		resources :unconferences
    resources :talks
  end

  get  "/api/ifttt/v1/status", to: "ifttt#status"
  post "/api/ifttt/v1/test/setup", to: "ifttt#setup"

  post "/api/ifttt/v1/triggers/new_talk_created", to: "ifttt#new_talk_created"
  post "/api/ifttt/v1/actions/created_new_talk", to: "ifttt#create_new_talk"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
