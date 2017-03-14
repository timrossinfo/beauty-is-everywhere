class Episode < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates_numericality_of :critters, less_than: 4
end
