class BatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.bloomers.programs.include?(record.program)
  end

  def create?
    user.bloomers.programs.include?(record.program)
  end
end
