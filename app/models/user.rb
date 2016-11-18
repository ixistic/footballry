class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :post_types, dependent: :destroy
  has_many :topics, dependent: :destroy

  before_save :assign_role
  validates_presence_of :email
  validates_uniqueness_of :email

  has_paper_trail

  def assign_role
    self.role = Role.find_by_name("Regular") if self.role.nil?
  end

  def admin?
    self.role.name == "Admin" if !self.role.blank?
  end

  def regular?
    self.role.name == "Regular" if !self.role.blank?
  end

end
