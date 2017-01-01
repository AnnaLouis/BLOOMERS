class StartupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
  end

  def create?
    user.startup_admin?
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end
end
