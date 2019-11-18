module ApplicationHelper
  def login_helper
    if current_recruiter
      link_to "Logout Rec", destroy_recruiter_session_path, method: :delete
    elsif current_applicant
      link_to "Logout App", destroy_applicant_session_path, method: :delete
    else
      link_to "Login", destroy_applicant_session_path, method: :delete
    end
  end
end
