class Ingredient < ApplicationRecord
  has_many :cocktails, through: :dos
  has_many :doses
  validates :name, uniqueness: true, presence: true
end
