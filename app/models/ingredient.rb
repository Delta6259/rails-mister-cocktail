class Ingredient < ApplicationRecord
  has_many :doses

  # before_destroy :check_for_cocktail
  # before_destroy :check_for_dose
  validates :name, uniqueness: true, presence: true
end
