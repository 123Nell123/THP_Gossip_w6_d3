Rails.application.routes.draw do

#affichage GET par défaut avec home methode ET page !!!
  root to:'static_pages_controller#home'

  #page statiques
  get 'static_pages/team'
  get 'static_pages/contact'

 

#route dynamique
  get 'static_pages(/:var)' , to: 'static_pages#firstname', as: 'welcome' #création d'un nom pour le chemin


#route dynamique affichage GET nouveau gossip
get 'gossip(/:id)', to: 'static_pages#gossip

end
 

