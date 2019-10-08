class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :procedures

  validates :name, presence: true
  validates :description, presence: true
end
