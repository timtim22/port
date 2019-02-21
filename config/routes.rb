Rails.application.routes.draw do
  resources :portfolios

  root to: 'pages#home'
  get 'about-me', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
