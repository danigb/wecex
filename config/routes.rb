ActionController::Routing::Routes.draw do |map|

  map.resources :users do |user|
    user.resource :password
    user.resource :confirmation
  end

  map.resource :profile
  map.resource :report
  map.resources :invoices

  map.resource :session
  map.resources :passwords

  map.resources :provincias, :only => [:index, :show]

  map.about '/', :controller => 'about', :action => 'index'
  map.who '/quienes', :controller => 'about', :action => 'who'
  map.mission '/paraque', :controller => 'about', :action => 'mission'

  map.root :controller => 'about'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
