Rails.application.routes.draw do
  resources :warriors

  devise_for :users
  root to: 'static_pages#battleground'

  #static_pages
  get  '/battleground', to: 'static_pages#battleground', as: :battleground
  get  '/stats', to: 'static_pages#stats', as: :stats

end
