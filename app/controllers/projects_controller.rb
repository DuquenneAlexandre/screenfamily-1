class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:my_projects, :show]
  before_action :set_project, only: [:edit, :show, :update, :disable, :join_project]

  def index
    @projects = policy_scope(Project)
    if params[:city].present?
      @projects = @projects.where("city LIKE ?", params[:city])
    end
    if params[:genre].present?
      @projects = @projects.where("genre LIKE ?", params[:genre])
    end
    if (params[:start_date].present?) && (params[:end_date].present?) && (params[:start_date].to_date < params[:end_date].to_date)
      @projects = @projects.where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
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

  def join_project
    @user = current_user
    @project.users << @user unless @project.users.include? @user
  end

  private

  def project_params
    params.require(:project).permit(:name, :city, :genre, :start_date, :end_date, :synopsis, :scenario, :number_of_participants, :number_of_days_for_crowdfunding, :project_picture, :project_picture_cache)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end
