class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]

  def index
    @users = User.all
  end
  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_user_path
      flash[:notice] = "Profile updated!"
    else
      flash[:alert] = "Profile not updated!"
      render 'edit'
    end
  end

  def profile
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :password, :email, :city, :phone_number, :user_picture, :user_picture_cache)
  end

  def set_user
    @user = current_user
    authorize @user
  end
end
