class BloomerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
   true
 end

 def show?
   true
 end

  #  def new?
  #   true
  # end

  def create?
    record.user.bloomer_admin == true
  end

    # def update?
    #   record.user == user
    # end

  end
