Rails.application.routes.draw do


  root "static_pages#home"

  get 'damp-proofing-specialists' => 'static_pages#home'
  get 'services'                  => 'static_pages#services'
  get 'rising-damp' 		  => 'static_pages#rising_damp'
  get 'penetrating-damp' 	  => 'static_pages#penetrating_damp'
  get 'rot' 			  => 'static_pages#rot'
  get 'flood-leak-damage'	  => 'static_pages#flood_leak_damage'
  get 'basement-conversions'	  => 'static_pages#basement_conversion'
  get 'monocouche-rendering'	  => 'static_pages#monocouche_render'
  get 'woodworm-treatment'	  => 'static_pages#woodworm_treatment'
  get 'plastering'		  => 'static_pages#plastering'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
