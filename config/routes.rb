Rails.application.routes.draw do
    resources :rasters

  resources :plots

  resources :arees

  resources :transettis

  resources :organismis

  resources :variabilis

  resources :searches
  resources :mineralisearches
  resources :animalisearches
  resources :vegetalisearches
  resources :modulo1searches    
  resources :modulo2searches 
  

  
  devise_for :users , :controllers => { :registrations => "registrations"}
  devise_scope :user do
  get "sign_in", :to => "devise/sessions#new"
  get "edit", :to => "devise/registrations#edit"
end

 

#mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to:'static_pages#home'
  match '/pagina_admin', to: 'static_pages#admin_page', via: 'get'
  match '/user_pages',   to: 'static_pages#user_pages',   via: 'get' 
  match '/nuovoprogetto',   to: 'static_pages#nuovoprogetto',   via: 'get' 
  match '/segnalazioni', to: 'static_pages#segnalazioni', via: 'get'
  match '/menumetadati', to: 'static_pages#menumetadati', via: 'get'
  match '/metadati_modulo1', to: 'static_pages#metadati_modulo1', via: 'get'
  match '/metadati_modulo2', to: 'static_pages#metadati_modulo2', via: 'get'
  match '/metadati_modulo3', to: 'static_pages#metadati_modulo3', via: 'get'
  match '/metadati_animale', to: 'static_pages#metadati_animale', via: 'get'
  match '/metadati_vegetale', to: 'static_pages#metadati_vegetale', via: 'get'
  match '/metadati_minerale', to: 'static_pages#metadati_minerale', via: 'get'
  match '/contatti', to: 'static_pages#contatti', via: 'get'
  match '/menuparametri', to: 'static_pages#menuparametri', via: 'get' 
  match '/legendacategorie', to: 'static_pages#legendacategorie', via: 'get' 
  match '/legendavariabili', to: 'static_pages#legendavariabili', via: 'get'
  match '/legendaruoli', to: 'static_pages#legendaruoli', via: 'get'

  
  #match '/nuovasegnalazioneminerale', to: 'segnalazione_mineralis#new', via: 'get'
resources :users do  
  resources :segnalazione_mineralis
  resources :segnalazione_animalis
  resources :segnalazione_vegetalis
  resources :modulo1s
  resources :modulo2s


 end

resources :modulo2s do
  resources :teams
  resources :variabilis
  resources :organismis
  resources :sistemi_biologicis
  resources :riferimenti_spazialis
  resources :transettis
  resources :arees
  resources :plots
  resources :rasters
end





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
