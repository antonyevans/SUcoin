class ApplicationController < ActionController::Base
#  protect_from_forgery

  def login_required
    if session[:member]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "member", :action => "login"
    return false 
  end

  def current_member
    session[:member]
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to]=nil
      redirect_to_url(return_to)
    else
      redirect_to :controller=>'member', :action=>'welcome'
    end
  end
  
end
