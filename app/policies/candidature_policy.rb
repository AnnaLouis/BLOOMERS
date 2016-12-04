class CandidaturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
      return true
    end

    def create?
      return true
    end

  def accept?
    record.bloomer.user == user
  end

  def refuse?
    record.bloomer.user == user
  end

  def short_list?
    record.bloomer.user == user
  end
end
