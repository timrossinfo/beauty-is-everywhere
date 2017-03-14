Rails.application.routes.draw do
  resources :episodes
  root to: 'episodes#new'
end
