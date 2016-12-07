class IncubationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def new
    user.bloomer_admin
  end


  def create
    user.bloomer_admin
  end
end
