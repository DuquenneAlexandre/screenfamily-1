class Project < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_and_belongs_to_many :users
  mount_uploader :project_picture, PhotoUploader

  def is_disabled
    @project = Project.find(params[:id])
    authorize @project
    @project.status
  end
end
