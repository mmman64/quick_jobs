Rails.application.routes.draw do

  # User Authentication
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recruiters
  resources :job_postings

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  root to: "pages#home"
end
