class Role < ApplicationRecord
  has_many :users
  has_paper_trail
end
