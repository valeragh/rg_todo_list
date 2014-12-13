class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, :all
      cannot :destroy, :all
    else
      can :read, :all
    end
  end
end
