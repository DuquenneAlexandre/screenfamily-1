class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:my_projects, :show]
  before_action :set_project, only: [:edit, :show, :destroy]
  before_action :authorize_project, only: [:show, :new, :create, :edit, :update, :disable, :search_project]

  def index
    @projects = policy_scope(Project)
    if not params[:city].blank?
      @projects = @projects.where("city LIKE ?", "%#{params[:city]}%")
    end
    # if @projects == []
    #   @markers = Gmaps4rails.build_markers(Project.all) do |project, marker|
    #     marker.lat project.latitude
    #     marker.lng project.longitude
    #   end
    # else
    #   @markers = Gmaps4rails.build_markers(@projects) do |project, marker|
    #     marker.lat project.latitude
    #     marker.lng project.longitude
    #   end
    # end
  end

  def my_projects
    @projects = current_user.projects
  end

  def show
    # @reviews = @project.reviews
    # @review = Review.new
    # @marker_show = Gmaps4rails.build_markers(@project) do |project, marker|
    #   marker.lat project.latitude
    #   marker.lng project.longitude
    # end
  end

  def new
    @project = Project.new
  end

  def create
    @user = current_user
    @project = current_user.projects.build(project_params)
    @project.user_id = current_user.id if current_user
    # if @project.save
    #   ProjectMailer.creation_confirmation(@project, @user).deliver_now
    #   redirect_to projects_path
    # else
    #   flash[:alert] = "Project not created!"
    # end
  end

  def edit
  end

  def update
    project = current_user.projects.find(params[:id])
    if project.update!(project_params)
      redirect_to project
      flash[:notice] = "Project updated!"
    else
      flash[:alert] = "Project not updated!"
    end
  end

  def disable
    if project.is_disabled?
      @project.status = false
      redirect_to projects_path
      flash[:notice] = "Project disabled!"
    else
      flash[:alert] = "Project not disabled!"
    end
  end

  def search_project
   redirect_to search_projects_path(params[:city])
  end

  private

  def project_params
    params.require(:project).permit(:name, :city, :project_picture, :project_picture_cache)
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def authorize_project
    authorize @project
  end

  def is_disabled
    @project.status
  end
end
