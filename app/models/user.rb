class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def doctor?
    self.role == 'doctor'? true : false
  end

  def receptionist?
    self.role == 'receptionist'? true : false
  end
end
