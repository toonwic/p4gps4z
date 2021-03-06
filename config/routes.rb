Pagpos::Application.routes.draw do

  get "track_positions" => "track_positions#index"
  post "track_positions" => "track_positions#create"
  get "track_positions/:code" => "track_positions#show", as: 'tracking_details'

  get 'welcome' => "welcome#index"

  get 'pagpos/index' => "pagpos#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # get 'users/auth/facebook' => 'omniauth_callbacks#passthru'
  # get 'users/auth/google' => 'omniauth_callbacks#passthru'
  # get 'users/auth/twitter' => 'omniauth_callbacks#passthru'

  devise_scope :user do
    # root to: 'devise/sessions#new'
    root to: 'welcome#index'
    get 'users' => "users#index"
    put 'users/:id' => 'users#update', as: 'user_update'
    get 'user_profile' => 'users#edit'
    get 'users/auth/:provider' => 'omniauth_callbacks#passthru'
  end

  namespace :api do
    namespace :v1  do
      devise_for :users
      root to: 'welcome#index'
      post 'add_tracking' => 'trackings#create'
      get 'force_get_data' => 'pagpos#force_get_data'
      get 'show' => 'pagpos#show'
      # get 'auth/:provider' => 'omniauth_callbacks#passthru'
      # get 'auth/facebook' => 'omniauth_callbacks#passthru'
      # get 'auth/google' => 'omniauth_callbacks#passthru'
      # get 'auth/twitter' => 'omniauth_callbacks#passthru'
    end
  end

  mount Resque::Server, :at => "/resque"
  # authenticate :user do 
    # mount Resque::Server, :at => "/resque"
  # end


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
