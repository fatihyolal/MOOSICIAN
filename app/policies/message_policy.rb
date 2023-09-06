class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end

  end
  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def create?
    true
  end
end
