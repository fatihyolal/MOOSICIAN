class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      user.admin? ? scope.all : scope.where(user:)
    end
  end

  def show?
    true
  end
end
