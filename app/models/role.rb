class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def self.roles_titles
      ['Acteur 1er rôle', 'Acteur 2nd rôle', 'Figurant', 'Cadreur', 'Directeur de la Photographie', 'Monteur', 'Ingénieur Son', 'Chef Opérateur']
  
  end
end
