Rails.application.routes.draw do
  resources :repositories
  resources :penggunas
  get 'fitur/kelas'
  get 'fitur/repo'
  get 'fitur/repo_umum'
  get 'fitur/profile'
  get 'home/index'
  get 'home/tentang'
  get 'home/logout'
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
