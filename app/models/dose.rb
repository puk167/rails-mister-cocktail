class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredients
  validates :description, allow_blank: false
  validates :ingredient, uniqueness {scope: :cocktail}
end