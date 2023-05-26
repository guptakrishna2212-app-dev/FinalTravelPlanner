class UserController < ApplicationController
  def signup
    render({:template=> "/base_templates/signupform.html.erb"})
  end

  def create
    user = User.new

    user.username = params.fetch("input_username")
    user.password = params.fetch("input_password")
    user.password_confirmation = params.fetch("input_password")


    save_status = user.save

    if save_status == true
      session.store(:user_id, user.id)
      redirect_to("/users/#{user.username}", {:notice => "Welcome, #{user.username}!" })
    else
      redirect_to({:template => "/user_signup"}, {:alert => user.errors.full_messages.to_sentence})
    end
  
  end

  def list
    render({:template => "/base_templates/alluserview.html.erb"})
  end

  def user
    @uname = params.fetch("username")
    @user = User.all.where({:id => session.fetch(:user_id)})
    render({:template => "/base_templates/user.html.erb"})
  end

  def signout
    reset_session
    redirect_to("/")
  end

  def signin
    render({:template => "/base_templates/signinform.html.erb"})
  end

  def authenticate
    un = params.fetch("input_username")
    pw = params.fetch("input_password")

    user = User.all.where({:username => un}).at(0)

    if user == nil
      redirect_to("/user_signin", {:alert => "No one found with that username"})
    else
      if user.authenticate(pw)
        session.store(:user_id, user.id)
        redirect_to("/", {:notice => "Welcome back #{user.username}"})
      else
        redirect_to("/user_signin", {:alert => "This is the wrong password"})
      end
    end
  end

end
