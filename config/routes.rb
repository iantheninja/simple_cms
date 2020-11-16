Rails.application.routes.draw do
  get 'access/menu'
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  root to: 'home#index'
  get 'home/index'
  # default route
  # get '/:controller(/:action(/:id))'
  get 'home/hello'

  get 'home/contact'
  get 'home/about'

  get 'menu', to: 'access#menu'
  get 'login', to: 'access#new'
  delete 'logout', to: 'access#destroy'

  resources :access, controller: 'access', except: %i[show index edit update] do
    member do
      get :menu
    end
  end

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end
end
