class RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update]

  def edit
  end

  def update
  end

  private

  def role_params
    params.require(:role).permit(:type, :description, :user_id, :project_id)
  end

  def set_role
    @role = Role.find(params[:id])
    authorize @role
  end
end
