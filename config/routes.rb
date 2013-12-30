Kojenadults::Application.routes.draw do
  resources :childs_session_descriptions


  #resources :lessonrecords
  #get 'lessonrecord' => 'lessonrecord#index'

  resources :lessonrecords do
    collection do
      get :search
    end
  end
  
  resources :adults_onlines

  resources :adults_japans

  resources :adults_separates

  resources :adults_licenses

  resources :adults_units

  resources :kojenadult_adults_refinement_lessonships

  resources :adults_refinement_lessons

  resources :kojenadult_adults_classtypeships

  resources :adults_classtypes

  resources :kojenadult_session_descriptionships

  resources :adults_session_descriptions  

  #get "admin/index"
  #get "sessions/new"
  #get "sessions/create"
  #get "sessions/destroy"
  get 'admin' => 'admin#index'
  get 'kojenadult_path' => 'kojenadult#new'
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
      get :search2
      get :search_report2
      get :inputs_view
      get :inputs_email_view
    end
  end   
  
  root :to => 'main#index', :as => 'main'
end