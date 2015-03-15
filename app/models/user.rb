class User < ActiveRecord::Base
  validates :firstname, :lastname, :email, :password, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => Devise::email_regexp
  
  has_many :shifts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
