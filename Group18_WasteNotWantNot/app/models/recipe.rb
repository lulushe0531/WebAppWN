class Recipe < ApplicationRecord
  before_save { self.name = name.downcase }
  validates :name, presence: true, length: { maximum: 50},
  uniqueness: { case_sensitive: false }
  VALID_INGREDIENT_REGEX = /[0-9]+/i
  validates :ingredient1, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient3, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient4, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient5, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient6, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient7, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient8, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient9, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true
  validates :ingredient10, format: { with: VALID_INGREDIENT_REGEX }, allow_nil: true

end
