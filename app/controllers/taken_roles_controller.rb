class TakenRolesController < ApplicationController
  before_action :set_taken_role, only: [:edit, :update]

  def edit
  end

  def update
  end

  def create
    @project = Project.find(params[:project_id])
    #@project.users << current_user
    @taken_role = @project.taken_roles.build(taken_role_params)
    @taken_role.user = current_user
    authorize @project
    if @taken_role.save!
      redirect_to @project
    else
      redirect_to @project
    end
  end

  private

  def taken_role_params
    params.require(:taken_role).permit(:title)
  end

  def set_taken_role
    @taken_role = TakenRole.find(params[:id])
    authorize @taken_role
  end
end
