Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :games
  resources :feedbacks

  get '/games/:id/feedbacks', to: 'games#feedbacks'

  # post /'rate', to: 'game#rating'
end 
