Rails.application.routes.draw do
  resources :unconferences, defaults: {format: :json} do
    resources :talks, defaults: {format: :json}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
