Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/:provider/callback', to: 'sessions#callback'
  get 'auth/failure', to: 'home#index'
  post '/followers' => 'home#followers', as: 'followers'
  root 'home#index'
end
