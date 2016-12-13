Rails.application.routes.draw do
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
    }
  end

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :todos
  resources :days, only: [:show, :update]
  resources :items
  resources :careers
  resources :job_categories
  resource :jobs

  # get 'careers/send' => "jobs#sendmail"
  match "/careers/send", :to => "jobs#sendmail", :via => :get

  get 'errors/not_found'

  get 'errors/internal_server_error'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get "contact" => "contact#contact"

# About

  get 'about' => "about#index"

# Divisions area
  get "divisions" => "divisions#divisions"
  get "divisions/specialty" => "divisions#specialty"
  get "divisions/340b" => "divisions#three"
  get "divisions/ltc" => "divisions#long_term_care"
  get "divisions/retail" => "divisions#retail"


  resources :news
  resources :comments

# Legal

  get 'legal' => "legal#index"


  # Error Handling routes

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

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
