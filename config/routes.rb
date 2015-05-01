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
 # match 'consent/index(/:locale)', :to => 'consent#index', :as => 'consent_index', via: [:get, :post]
  match 'consent/index(/:id(/:locale))', :to => 'consent#index', :as => 'consent_index', via: [:get, :post]
  match 'consent/info_letter(/:id(/:locale))', :to => 'consent#info_letter', :as => 'consent_info_letter', via: [:get, :post]
  match 'consent/screening(/:id(/:locale))', :to => 'consent#screening', :as => 'consent_screening', via: [:get, :post]
  #match 'surveyor/create(/:uid(/:locale))', :to => 'surveyor#create', :as => 'surveyor_create', via: [:get, :post]
  match 'recruit/invitation(/:id(/:locale))', :to => 'recruit#invitation', :as => 'recruit_invitation', via: [:get, :post]

  #get 'consent/info_letter(/:locale)', :to => 'consent#info_letter'

  #match 'consent', :to => 'consent#index', :as => 'consent_index', via: [:get, :post]

  #get 'welcome(/:locale)', :to => 'welcome#index'
  #post 'welcome(/:locale)', :to => 'welcome#index'

  # get 'consent/info_letter(/:locale)', :to => 'consent#info_letter'
  # post 'consent/info_letter(/:locale)', :to => 'consent#info_letter' 

  # scope "(consent/:locale)", locale: /en|ko|tr/ do
  #   resources :info_letter, :index
  # end

  match 'consent/info_letter/(:/id(/:locale))/info_letter.pdf', :to => 'consent#info_letter_pdf', :as => 'consent_info_letter_pdf', via: [:get, :post]

  #get 'consent(/:locale)', :to => 'consent#index'
  #post 'consent(/:locale)', :to => 'consent#index'

  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
  patch ':controller(/:action(/:id))'

  #get ':controller(/:action(/:id(/:locale)))'
  #post ':controller(/:action(/:id(/:locale)))'
  #patch ':controller(/:action(/:id(/:locale)))'

  #match ':controller(/:action(/:id))', via [:get, :post, :patch]

  #scope "/:id" do
  #   resources :welcome, :consent #, :recruit
  # end
  scope "/:id/:locale" do
    #resources :welcome, :consent, :surveyor
    #resources :consent, :surveyor
  end
  
end
