=begin
class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user

    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' 
      render 'new'
    end
  end

  def destroy
  end
end
=end

class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(email: params[:session][:email].downcase) #line 7
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
