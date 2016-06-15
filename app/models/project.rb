class Project < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :roles
  has_many :users, through: :roles
  mount_uploader :project_picture, PhotoUploader

  def is_disabled
    @project = Project.find(params[:id])
    authorize @project
    @project.status
  end
end
