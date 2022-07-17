class User < ApplicationRecord
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :trackable, :validatable,:registerable,
         :recoverable, :rememberable,
    authentication_keys: [:enployee_code]

  # def self.find_first_by_auth_conditions(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if username = conditions.delete(:enployee_code)

  #     where(conditions).where(enployee_code: enployee_code).first
  #   else
  #     where(conditions).first
  #   end
  # end

  def email_required?
    false
  end

  # def email_changed?
  #   false
  # end

  def will_save_change_to_email?
    false
  end

end