Rails.application.routes.draw do




  get 'cities/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
#affichage GET par défaut avec home methode ET page !!!
  root to: 'static_pages#home'

  #page statiques
  get 'static_pages/team'
  get 'static_pages/contact'

 
#route dynamique
  get 'firstname(/:var)' , to: 'static_pages#firstname', as: 'welcome' #création d'un nom pour le chemin


#route dynamique affichage GET nouveau gossip
# get 'gossip(/:id)', to: 'static_pages#gossip'   #deja crre par la ressource

#creation d 'un potin



resources :gossips, only: [ :create, :new, :show, :edit ]  do
  resources :comment
end
resources :users
resources :sessions, only: [:new, :create, :destroy]

end
 

