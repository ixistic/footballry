class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
