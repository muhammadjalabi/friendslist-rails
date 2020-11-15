Rails.application.routes.draw do
  resources :friendlists
  #get 'home/index'
  get 'home/about'


  root 'home#index' 
  #sets the root-folder(index)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
