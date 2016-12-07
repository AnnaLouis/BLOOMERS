class BatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    @programs = []
    user.bloomers.each do |bloomer|
      @programs << bloomer.program
    end
    @programs.include?(record)
  end

  def create?
    @programs = []
    user.bloomers.each do |bloomer|
      @programs << bloomer.program
    end
    @programs.include?(record)
  end
end
