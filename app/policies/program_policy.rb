class ProgramPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new
    user.bloomer_admin == true
  end

  def create?
    user.bloomer_admin == true
    # TOUS LES BLOOMER ADMIN PEUVENT CREER ==> à voir si c'est uniquement le propriétaire du bloomer en question
  end
end
