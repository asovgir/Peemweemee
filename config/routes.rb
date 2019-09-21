Rails.application.routes.draw do
  resources :agendacategories
  resources :bet_ideas
  resources :agendas
  resources :bets
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'bets#homepage'

end
