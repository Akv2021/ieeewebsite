Rails.application.routes.draw do
  resources :rightwidgets
  resources :events
  resources :navigations
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#get 'welcome/index'
#get 'welcome/admin'
match ':controller(/:action(/:id))', :via => :get


root "welcome#index"
end
