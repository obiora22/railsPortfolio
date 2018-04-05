Rails.application.routes.draw do
  
  resources :portfolios, except: [:show]

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  # get 'blogs/:id/publish', to: 'blogs#toggle_status', as: 'blog_publish'

  resources :blogs do 
    member do 
      get 'publish', to: 'blogs#toggle_status'
    end 
  end 

  # get 'pages/home'

  # get 'pages/contact'

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: "pages#home"
end
