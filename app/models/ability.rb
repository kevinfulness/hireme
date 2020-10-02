class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    #can :manage, Article
    can :read, Project

    if user.admin?
        can :manage, :all
    else
        can :read, :all
    end
  end
end
