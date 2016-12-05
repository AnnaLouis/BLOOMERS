class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.startup_admin == true
  end

  def add?
    user.startup_admin == true
  end

  def hide?
    user.startup_admin == true
  end
end
