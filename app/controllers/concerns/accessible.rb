# Suggested code at https://github.com/plataformatec/devise/wiki/How-to-Setup-Multiple-Devise-User-Models

module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_applicant
      flash.clear
      redirect_to(applicant_root_path) && return
    elsif current_recruiter
      flash.clear
      redirect_to(recruiter_root_path) && return
    end
  end
end
