Rails.application.routes.draw do
  resources :portfolios

  resources :blogs

  # get 'pages/home'

  # get 'pages/contact'

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: "pages#home"
end
