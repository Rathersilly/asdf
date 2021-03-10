class Pet < ApplicationRecord
  has_and_belongs_to_many :people
  enum species: [:unknown, :cat, :dog], _suffix: true
end
