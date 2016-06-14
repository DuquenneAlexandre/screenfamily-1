class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:my_projects, :show]
  before_action :set_project, only: [:edit, :show, :update, :disable]

  def index
    @projects = policy_scope(Project)
    @q = Project.ransack(params[:q])
    @projects = @q.result(:distinct => true)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
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
    authorize @project
  end

  def create
    @project = current_user.projects.build(project_params)
    authorize @project
    if @project.save
      redirect_to @project
    end
    # @user = current_user
    # @project = current_user.projects.build(project_params)
    # @project.user_id = current_user.id if current_user
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
    if project.update(project_params)
      redirect_to project
      flash[:notice] = "Project updated!"
    else
      flash[:alert] = "Project not updated!"
    end
  end

  def disable
    if project.is_disabled?
      @project.status = false
      @project.save
      redirect_to projects_path
      flash[:notice] = "Project disabled!"
    else
      flash[:alert] = "Project not disabled!"
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :city, :project_picture, :project_picture_cache)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end
