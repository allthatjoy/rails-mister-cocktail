class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates_uniqueness_of :cocktail, scope: :ingredient
end


# A dose must have a description,
# a cocktail and an ingredient,
# and [cocktail, ingredient] pairings
# should be unique.
