Rails.application.routes.draw do

  get 'admin', :to => "access#index"

  root "public#index"

  get 'show/:permalink', :to => 'public#show'
  #get 'demo/index'

  #match ':controller(/:action(/:id))', :via => :get

  match ':controller(/:action(/:id))', :via => [:get, :post] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
