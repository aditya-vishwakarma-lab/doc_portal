# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.receptionist?
      can [:read, :create, :update, :destroy], Patient
    elsif user.doctor?
      can [:read, :graph], Patient
    end
  end
end
