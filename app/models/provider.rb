class Provider < ApplicationRecord

  validates :name, presence: true
  validates :rut, presence: true
  validates_with RutValidator
  validates :business_name, presence: true
  validates :address, presence: true
  validates :phone_one, numericality: { only_integer: true }
  validates :email, presence: true
  validates_with NameValidator

  scope :match_name, ->(name) do
    where('name ilike ?', "%#{name}%")
  end

end
