class Project < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :roles
  accepts_nested_attributes_for :roles, :allow_destroy => true
  has_many :users, through: :roles
  has_many :messages
  mount_uploader :project_picture, PhotoUploader

  geocoded_by :city
  after_validation :geocode, if: :city_changed?

def start_time
  proj = @project
  self.my_related_model.proj.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

end
