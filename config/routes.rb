Rails.application.routes.draw do
  
  root 'urls#new'
  
  resources :urls
  
  get ':slug' => 'urls#click'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
