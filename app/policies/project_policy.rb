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
    true # anyone can create a project
    #TODO : only a logged user can create a project
  end

  def create?
    true
  end

  def edit?
    record.user == user # only the owner of the project can update it
  end

  def disable?
    record.user == user # only the owner of the project can update it
  end

  def search_project?
    true
  end

  def join_project?
    !record.users.include? user
  end
end
