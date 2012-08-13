Kojenadults::Application.routes.draw do
  resources :kojenadult_session_descriptionships

  resources :adults_session_descriptions

  #get "admin/index"
  #get "sessions/new"
  #get "sessions/create"
  #get "sessions/destroy"
  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users

  get "main/index"
  resources :kojenadults_classe_ships

  resources :kojenadult_classes

  resources :kojenadult_adults_localexamedships

  resources :kojenadult_adults_whatexamedships

  resources :kojenadult_adults_whylearnships

  resources :kojenadult_adults_howyouknowuships

  resources :kojenadult_adults_graduatedships

  resources :adults_localexameds

  resources :adults_whatexameds

  resources :adults_whylearns

  resources :adults_howyouknowus

  resources :adults_graduateds

  resources :kojenadults do
    collection do
      get :data
      get :search
      get :search1
      get :search_report      
    end
  end   
  
  root :to => 'main#index', :as => 'main'
end