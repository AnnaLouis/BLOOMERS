class BloomerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def create
    end

  end
end
