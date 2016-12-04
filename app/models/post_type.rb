class PostType < ApplicationRecord
  attr_accessor :created_by, :last_edited_by
  belongs_to :created_by, class_name: "User", foreign_key: "created_by_id"
  belongs_to :last_edited_by, class_name: "User", foreign_key: "last_edited_by_id"
  has_many :posts, dependent: :destroy

  has_paper_trail
  
end
