class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: 'should be unique for its cocktail' }
end
