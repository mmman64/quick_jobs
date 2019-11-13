Rails.application.routes.draw do

  # User Authentication
  devise_for :users

  resources :recruiters
  resources :job_postings

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  root to: "pages#home"
end
