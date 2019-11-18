Rails.application.routes.draw do
  devise_for :recruiters, controllers: {
                            sessions: "recruiters/sessions",
                            registrations: "recruiters/registrations",
                          },
                          path_names: {
                            sign_in: "login",
                            sign_out: "logout",
                            sign_up: "register",
                          }

  devise_scope :recruiters do
    authenticated do
      root to: "dashboards#recruiter_dashboard", as: "authenticated_recruiter_root"
    end

    # unauthenticated do
    #   root to: "pages#home", as: "unauthenticated_recruiter_root"
    # end
  end

  devise_for :applicants, controllers: {
                            sessions: "applicants/sessions",
                            registrations: "applicants/registrations",
                          },
                          path_names: {
                            sign_in: "login",
                            sign_out: "logout",
                            sign_up: "register",
                          }

  devise_scope :applicants do
    authenticated do
      root to: "dashboards#applicant_dashboard", as: "authenticated_applicant_root"
    end

    # unauthenticated do
    #   root to: "pages#home", as: "unauthenticated_applicant_root"
    # end
  end

  unauthenticated do
    root to: "pages#home", as: "guest_root"
  end

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

end
