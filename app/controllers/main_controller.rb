class MainController < ApplicationController
  def index
    #flash[:notice] = "Logged in successfully"
    #flash[:alert] = "Invalid email or password"
    if session[:user_id]
      #@user = User.find(session[:user_id]) #original funcionando
      @user = User.find_by(id:session[:user_id])
    end  
  end
end    