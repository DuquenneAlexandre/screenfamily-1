class RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update]

  def edit
  end

  def update
  end

  def create
    @project = Project.find(params[:project_id])
    @role = @project.roles.build(role_params)
    authorize @project
    if @role.save!
      flash[:notice] = 'role was successfully created.'
      redirect_to @project
    else
      flash[:notice] = "Error creating role: #{@role.errors}"
      redirect_to @project
    end
  end

  private

  def role_params
    params.require(:role).permit(:title, :description, :user_id, :project_id)
  end

  def set_role
    @role = Role.find(params[:id])
    authorize @role
  end
end
