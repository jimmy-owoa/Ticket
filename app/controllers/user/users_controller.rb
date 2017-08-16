class User::UsersController < User::ApplicationController
  before_action :user_find

  def edit
  end

  def update
    if @user.update user_params
      redirect_to user_path, notice: "Imagen Agregada"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end

  def user_find
    @user = User.find(params[:id])
  end
end
