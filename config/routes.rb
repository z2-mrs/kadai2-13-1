Rails.application.routes.draw do
  root 'exapmles#index'
  resources :exapmles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
