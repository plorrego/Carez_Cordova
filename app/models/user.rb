class User < ApplicationRecord
	resourcify
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :student_groups
  has_many :groups, :through => :student_groups
  has_many :student_lectures
  has_many :lectures, :through => :student_lectures
end
