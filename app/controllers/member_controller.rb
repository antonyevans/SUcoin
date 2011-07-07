class MemberController < ApplicationController

  before_filter :login_required, :only=>['welcome', 'change_password', 'hidden']

  def signup
    @member = Member.new(@params[:member])
    if request.post?  
      if @member.save
        session[:member] = Member.authenticate(@member.login, @member.password)
        flash[:message] = "Signup successful"
        redirect_to :action => "welcome"          
      else
        flash[:warning] = "Signup unsuccessful"
      end
    end
  end

  def login
    if request.post?
      if session[:member] = Member.authenticate(params[:member][:login], params[:member][:password])
        flash[:message]  = "Login successful"
        redirect_to_stored
      else
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def logout
    session[:member] = nil
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end

  def forgot_password
    if request.post?
      u= Member.find_by_email(params[:member][:email])
      if u and u.send_new_password
        flash[:message]  = "A new password has been sent by email."
        redirect_to :action=>'login'
      else
        flash[:warning]  = "Couldn't send password"
      end
    end
  end

  def change_password
    @member=session[:member]
    if request.post?
      @member.update_attributes(:password=>params[:member][:password], :password_confirmation => params[:member][:password_confirmation])
      if @member.save
        flash[:message]="Password Changed"
      end
    end
  end

  def welcome
  end
  def hidden
  end

end
