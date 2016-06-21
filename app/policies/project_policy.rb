class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true # anyone can see the search page
  end

  def show?
    true # anyone can see a project
  end

  def new?
    true # only a logged user can create a project
  end

  def create?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def set_disabled?
    true
  end

  def set_crowdfunded?
    true
  end

  def set_inprogress?
    true
  end

  def set_finished?
    true
  end

  def edit_synopsis?
    true
  end

  def edit_scenario?
    true
  end

  def edit_description?
    true
  end

  def search_project?
    true
  end

  def join_project?
    !record.users.include? user
  end
end
