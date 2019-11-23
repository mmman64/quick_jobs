module ApplicationHelper
  def login_helper
    if current_recruiter
      link_to "Logout Rec", destroy_recruiter_session_path, class: "nav-link", method: :delete
    elsif current_applicant
      link_to "Logout App", destroy_applicant_session_path, class: "nav-link", method: :delete
    else
      (link_to "Login", new_recruiter_session_path, class: "nav-link") + " " +
      (link_to "Sign up", new_recruiter_registration_path, class: "nav-link")
    end
  end
end
