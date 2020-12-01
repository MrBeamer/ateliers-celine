class UserStepPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def mark_as_done?
    return true
  end
  
end