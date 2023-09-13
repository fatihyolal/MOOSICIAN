class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    # THIS METHOD TAKES CARE OF WHAT YOU WILL SEE IN THE INDEX PAGE
    def resolve
      # IF YOU DO THIS, YOU SAY " If the use is the admin, show all the posts, otherwise, only show the ones where the creator of the post is the current user."
      # user.admin? ? scope.all : scope.where(user: user)
      # WITH THIS YOU SHOW EVERYTHING TO EVERYONE
      scope.all
    end
  end

  # THIS IS NOT HOW YOU DO THE INDEX ACTION!
  # def index
  #   true
  # end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy
    record.user == user
  end
end
