class PasswordsResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:passwords_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "Email sent with password reset instruction"
      redirect_to root_url
    else
      flash.now[:danger] = "Email address not found"
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end
end