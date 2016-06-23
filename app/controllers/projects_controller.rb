class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_filter :require_permission, only: [:edit, :update]
  before_action :set_project, only: [:edit, :show, :update, :disable, :join_project, :set_disabled, :set_crowdfunded, :set_inprogress, :set_finished, :edit_scenario, :edit_synopsis, :edit_description, :progress]

  def index
    @projects = policy_scope(Project).paginate(:page => params[:page], per_page: 6).order('created_at DESC')
    if params[:city].present?
      @projects = @projects.where("city LIKE ?", params[:city])
    end
    if params[:genre].present?
      @projects = @projects.where("genre LIKE ?", params[:genre])
    end
    if (params[:start_date].present?)
      @projects = @projects.where("start_date >= ?", params[:start_date])
    end
    if (params[:end_date].present?)
      @projects = @projects.where("end_date <= ?", params[:end_date])
    end
    if (params[:start_date].present?) && (params[:end_date].present?)
      @projects = @projects.where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
    end

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@project) do |project, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
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
    @messages = Message.all
    @message = @project.messages.new
    @roles = Role.all
    # @reviews = @project.reviews
    # @review = Review.new
    @project_coordinates = { latitude: @project.latitude, longitude: @project.longitude }
    @alert_message = "You are viewing #{@project.name}"
    @marker_show = Gmaps4rails.build_markers(@project) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
    end
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
      @project.users << current_user
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
    if @project.update(project_params)
      redirect_to project_path
      flash[:notice] = "Project updated!"
    else
      flash[:alert] = "Project not updated!"
      render 'edit'
    end
  end

  def set_disabled
    if @project.disabled == false
      @project.disabled = true
      @project.save
      redirect_to projects_path
      flash[:notice] = "Project disabled!"
    else
      flash[:alert] = "Project already disabled!"
    end
  end

  def set_crowdfunded
    if @project.validated_for_crowdfunding == false
      @project.validated_for_crowdfunding = true
      @project.save
      redirect_to project_path
      flash[:notice] = "Project can be crowdfunded!"
    else
      flash[:alert] = "Project already in crowdfunding!"
    end
  end

  def set_inprogress
    if @project.inprogress == false
      @project.inprogress = true
      @project.save
      redirect_to projects_path
      flash[:notice] = "Project in progress!"
    else
      flash[:alert] = "Project already in progress!"
    end
  end

  def set_finished
    if @project.finished == false
      @project.finished = true
      @project.save
      redirect_to projects_path
      flash[:notice] = "Project finished!"
    else
      flash[:alert] = "Project already finished!"
    end
  end

  def edit_scenario
  end

  def edit_synopsis
  end

  def edit_description
  end

  # def join_project
  #   @role = current_user.roles.build(project_id: @project.id, title: params[:title])
  #   authorize @role
  #   if @project.save
  #     flash[:notice] = "Project joined!"
  #   else
  #     flash[:alert] = "Project not joined!"
  #   end
  # end

  private

  def project_params
    params.require(:project).permit(:name, :city, :genre, :start_date, :end_date, :synopsis, :scenario, :description, :number_of_participants, :number_of_days_for_crowdfunding, :goal_for_crowdfunding, :validated_for_crowdfunding, :disabled, :inprogress, :finished, :project_picture, :project_picture_cache, :pledged, :price_cents, roles_attributes: [:id, :title, :_destroy])
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

  def require_permission
    if current_user != Project.find(params[:id]).users.first
      redirect_to root_path
    end
  end

  end
