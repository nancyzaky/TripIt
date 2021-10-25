class SessionsController < ApplicationController
  #  before_action :authorize, only: [:show]

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
        UserMailer.with(user: user).welcome_email.deliver_now

      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { error: "Invalid email or password" },status: :unauthorized
    end
  end


  def destroy
  session.delete :user_id
  head :no_content
end
end
