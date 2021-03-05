class Comment < ApplicationRecord
  belongs_to :post
  # if :parent is false, parent is is sorta really the post
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :children, class_name: "Comment", foreign_key: "parent_id"
end
