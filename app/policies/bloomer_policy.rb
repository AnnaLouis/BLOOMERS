class BloomerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
   true
  end


  #  def new?
  #   true
  # end

  def create?
    record.user.bloomer_admin?
  end

  def update?
    record.user == user
  end

end
