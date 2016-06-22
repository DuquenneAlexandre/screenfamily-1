class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def self.roles_titles
    ['Actor (leading role)', 'Actor (supporting role)', 'Camera Operator', 'Director', 'Extra', 'Illustrator', 'Make Up & Costumes', 'Photographer', 'Script Supervisor', 'Sound Director', 'Video Editor', 'Voice Actor']
  end
end
