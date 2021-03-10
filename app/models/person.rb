class Person < ApplicationRecord
  has_and_belongs_to_many :pets
  has_many :sits
end
