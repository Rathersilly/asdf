class Sit < ApplicationRecord
  belongs_to :person
  belongs_to :sitter
end
