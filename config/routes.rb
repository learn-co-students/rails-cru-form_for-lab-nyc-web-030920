Rails.application.routes.draw do
  
resources :songs, only: [:index,:new,:edit,:show,:create,:update]
resources :artists, only: [:new,:edit,:show,:create,:update]
resources :genres, only: [:new,:edit,:show,:create,:update]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
