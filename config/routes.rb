Rails.application.routes.draw do


  devise_scope :applicant do
    devise_for :applicants, path: "applicants",
                            controllers: {
                              sessions: "applicants/sessions",
                              registrations: "applicants/registrations",
                            },
                            path_names: {
                              sign_in: "login",
                              sign_out: "logout",
                              sign_up: "register",
                            }
    authenticated do
      root to: "dashboards#applicant_dashboard", as: "applicant_root"
    end
  end




  devise_scope :recruiter do
    devise_for :recruiters, path: "recruiters",
                            controllers: {
                              sessions: "recruiters/sessions",
                              registrations: "recruiters/registrations",
                            },
                            path_names: {
                              sign_in: "login",
                              sign_out: "logout",
                              sign_up: "register",
                            }
    authenticated do
      root to: "dashboards#recruiter_dashboard", as: "recruiter_root"
    end
  end

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  root to: "pages#home", as: "guest_root"
end
