class Project < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :roles
  has_many :users, through: :roles
  mount_uploader :project_picture, PhotoUploader

  geocoded_by :city
  after_validation :geocode, if: :city_changed?

  def is_disabled
    @project = Project.find(params[:id])
    authorize @project
    @project.status
  end
end
