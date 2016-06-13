class Project < ActiveRecord::Base
  mount_uploader :project_picture, PhotoUploader
end
