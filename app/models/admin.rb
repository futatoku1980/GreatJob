class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :email, uniqueness: true
  validates :enployee_code, uniqueness: true
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
