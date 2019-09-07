Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#battleground'

  get  '/battleground', to: 'static_pages#battleground', as: :battleground
  get  '/warriors', to: 'static_pages#warriors', as: :warriors
  get  '/stats', to: 'static_pages#stats', as: :stats
end
