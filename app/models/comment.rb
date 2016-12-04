class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :created_by, class_name: "User"
  belongs_to :last_edited_by, class_name: "User"

end
