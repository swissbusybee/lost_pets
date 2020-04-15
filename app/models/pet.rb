class Pet < ApplicationRecord
  validates :species, inclusion: { in: %w(dog cat monkey rabbit) }
  validates :name, presence: true
end
