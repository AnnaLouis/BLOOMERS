class CandidaturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
    #user.startups.include?(record.startup)
  end

  def create?
    true
    #user.startups.include?(record.startup)
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
