class StartupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user == record.user
  end

  def create?
    user.startup_admin?
  end
end
