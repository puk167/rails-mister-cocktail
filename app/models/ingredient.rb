class Ingredient < ApplicationRecord
  # belongs_to :cocktail
  validates :name, uniqueness: true, presence: true
end
