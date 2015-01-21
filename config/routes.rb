GMHS::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  #post 'estimate/:id' => 'estimate#index'

  #match 'estimate/index', via: [:get, :post]

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
  root :to => 'consent#nothing_here', via: [:get, :post]

 
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

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match 'consent/index(/:locale)', :to => 'consent#index', :as => 'consent_index', via: [:get, :post]

  #get 'consent/info_letter(/:locale)', :to => 'consent#info_letter'

  #match 'consent', :to => 'consent#index', :as => 'consent_index', via: [:get, :post]
  get 'welcome(/:locale)', :to => 'welcome#index'
  post 'welcome(/:locale)', :to => 'welcome#index'

  # get 'consent/info_letter(/:locale)', :to => 'consent#info_letter'
  # post 'consent/info_letter(/:locale)', :to => 'consent#info_letter' 

  # scope "(consent/:locale)", locale: /en|ko|tr/ do
  #   resources :info_letter, :index
  # end


  #get 'consent(/:locale)', :to => 'consent#index'
  #post 'consent(/:locale)', :to => 'consent#index'

  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
  patch ':controller(/:action(/:id))'

  #match ':controller(/:action(/:id))', via [:get, :post, :patch]

  scope "/:locale" do
    resources :welcome, :consent#, :recruit
  end
  
end
