class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Usuario creado exitosamente! Inicie sesión con sus datos:"
        redirect_to login_url
      else
        render 'new'
      end
    end

    def nuevaOC
      @user = User.find(params[:id])
      render @user.name
    end

    private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :tipo)
  end

end