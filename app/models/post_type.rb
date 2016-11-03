class PostType < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  belongs_to :last_edited_by, class_name: "User"

  has_paper_trail
  
end
