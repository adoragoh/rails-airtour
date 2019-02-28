class TourPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

 def new?
    # By returning true we allow our users to create a restaurant
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    # Instead of current_user we have -> user
    # Instead of restaurant we have -> record
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user || user.admin
  end

end
