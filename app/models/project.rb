class Project < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  mount_uploader :project_picture, PhotoUploader
end
