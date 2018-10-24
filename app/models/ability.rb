class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.is_client?
      can :manage, User, id: user.id
    else user.is_admin?
      can :manage
    end
  end
end
