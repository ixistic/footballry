class Topic < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  belongs_to :last_edited_by, class_name: "User"
  has_many :posts, dependent: :destroy

  has_paper_trail

end
