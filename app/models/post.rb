class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :post_type
  belongs_to :created_by, class_name: "User"
  belongs_to :last_edited_by, class_name: "User"
  has_many :comments, dependent: :destroy
  mount_uploader :avatar, AvatarUploader

  has_paper_trail

end
