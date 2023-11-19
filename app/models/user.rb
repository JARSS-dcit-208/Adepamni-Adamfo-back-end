class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :customers
  has_many :payments
  has_many :dresses

  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :validatable,
    :recoverable, :rememberable,
    :jwt_authenticatable, jwt_revocation_strategy: self

  def fullname
    "#{firstname.capitalize} #{lastname.capitalize}"
  end
end
