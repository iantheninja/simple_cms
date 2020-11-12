Rails.application.routes.draw do
  
  root to: 'home#index'
  get 'home/index'
  # default route
  # get '/:controller(/:action(/:id))'
  get 'home/hello'

  get 'home/contact'
  get 'home/about'

  resources :subjects do
    member do
      :delete
    end
  end

  resources :pages do
    member do
      :delete
    end
  end
end
