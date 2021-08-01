Rails.application.routes.draw do
  #get "/articles", to: "articles#index"
  get "/articles/archived" , to: "articles#archived"
  root "articles#index"

  resources :articles do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
