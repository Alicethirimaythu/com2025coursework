Rails.application.routes.draw do
  resources :plantopia
  root 'home#home'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'home', to:'home#home'
  get 'plantopia', to: 'home#plantopia'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
