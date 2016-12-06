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
    record.program.bloomer.user == user
  end

  def refuse?
    record.program.bloomer.user == user
  end

  def short_list?
    record.program.bloomer.user == user
  end

  def to_meet?
    record.program.bloomer.user == user
  end
end
