class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def after_sign_in_path_for(resource)
    if resource.class.to_s == "Recruiter"
      recruiter_root_path
    elsif resource.class.to_s == "Applicant"
      applicant_root_path
    end
  end
end
