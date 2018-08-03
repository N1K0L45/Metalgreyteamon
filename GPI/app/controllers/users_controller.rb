class UsersController < ApplicationController
<<<<<<< HEAD
  def new
=======
  def register
    @user = User.create(user_params)
    if @user.save
      response = { message: 'User created succesfully' }
      render json: response, status: :created
    else
      render json: @user.errors, status: :bad
    end
  end

  private
  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
>>>>>>> 554fc4b616ecf32955d401c26c667b82baa6ed80
  end
end
