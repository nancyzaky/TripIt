class Api::SessionsController < ApplicationController
    # before_action :authorize

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])


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
private
 def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
