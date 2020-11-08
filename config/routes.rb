Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  get 'pages/edit'
  get 'pages/delete'
  get 'subjects/index'
  get 'subjects/show'
  get 'subjects/edit'
  get 'subjects/delete'
  root to: 'home#index'
  get 'home/index'
  # default route
  # get '/:controller(/:action(/:id))'
  get 'home/hello'

  get 'home/contact'
  get 'home/about'
end
