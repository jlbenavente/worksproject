Rails.application.routes.draw do
  resources :joboffers
  resources :joboffers, only: :show do
  	resources :agreements, only: :create
  end
  root to: 'joboffers#index'
  devise_for :users
  get 'users/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# Rails.application.routes.draw do
#   get 'users/show'
#   resources :joboffers
#   root to: 'joboffers#index'
#   devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end