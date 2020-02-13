class User < ApplicationRecord
	#NAMES & AGE
	validates :first_name, presence: true
	validates :last_name, presence: true
	#EMAIL
	validates :email, presence: true,
		uniqueness: true
	#PASSWORD & BCRYPT
	has_secure_password
	validates :password, presence: true,
		length: {minimum: 6}
	#AGE
	validates :age, presence: true

	#LINK GOSSIP
	has_many :gossips
	#LINK CITY
	belongs_to :city, optional: true
	#LINK COMMENT
	has_many :comments
end
