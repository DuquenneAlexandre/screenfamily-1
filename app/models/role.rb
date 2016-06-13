class Role < ActiveRecord::Base
  belongs_to :users
  belongs_to :projects
end
