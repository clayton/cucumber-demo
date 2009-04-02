ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  map.resources :interns
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
