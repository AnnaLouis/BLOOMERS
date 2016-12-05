class ProgramPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new
    # user.bloomer_admin == true
    user.bloomers.include?(record.bloomer)
  end

  def create?
    # user.bloomer_admin == true
    user.bloomers.include?(record.bloomer)
  end
end
