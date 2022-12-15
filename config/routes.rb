Rails.application.routes.draw do
  get 'merchants', to: 'merchants#index'
  get 'merchants/:id', to: 'merchants#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
