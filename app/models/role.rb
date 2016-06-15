class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def self.roles_titles
    ['test', 'test1']
  end
end
