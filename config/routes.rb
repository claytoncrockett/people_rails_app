Rails.application.routes.draw do
  get 'pets/index'
  get 'pets/show'
  get 'pets/new'
  root "people#index"
  resources :people do 
    resources :pets
  end
end
