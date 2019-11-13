Rails.application.routes.draw do


  resources :job_postings
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  root to: "pages#home"
end
