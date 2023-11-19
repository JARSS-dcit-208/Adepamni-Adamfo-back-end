class Customer < ApplicationRecord
  has_one :measurement
  has_many :dresses
  has_many :payments
  belongs_to :user
  accepts_nested_attributes_for :measurement

  def fullname
    "#{firstname.capitalize} #{lastname.capitalize}"
  end
end
