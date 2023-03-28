Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tarot_spreads/spread', to: 'tarot_spreads#spread'
  resources :tarot_spreads, only: [:new, :create] 
end
