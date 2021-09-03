class RegistrationsController < ApplicationController
  def new
      #teste user
    @user = User.new
  end

  def create
    #render plain: params[:user]
    @user = User.new(user_params)
     if @user.save
       session[:user_id] = @user.id
       redirect_to root_path, notice: "LOGIN REALIZADO COM SUCESSO !"
     else
      #flash[:alert] = "algo esta errado"
      render :new
     end  

  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation) 
  end  
end

