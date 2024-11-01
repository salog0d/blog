Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
<<<<<<< HEAD
  resources :articles, only: [ :show, :index, :new, :create, :edit, :update ]
=======
  resources :articles, only: [ :show, :index, :new, :create ]
>>>>>>> 5915444d24d21c59441e553da45559fc717f22f0
end
