class Category < ApplicationRecord
  has_many :products, inverse_of: :category

validates :description, presence: {case_sensitive: false ,message: "no puede estar vacio"}


  scope :match_description, ->(description) do
    where('description ilike ?', "%#{description}%")
  end
end
