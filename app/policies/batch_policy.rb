class BatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.bloomer_admin == true
  end

  def create?
    user.bloomer_admin == true
  end
end
