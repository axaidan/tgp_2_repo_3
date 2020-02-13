class User < ApplicationRecord
	#NAMES & AGE
	validates :first_name, presence: true
	validates :last_name, presence: true

	#EMAIL
	validates :email, presence: true,
		uniqueness: true

	#AGE
	validates :age, presence: true

	#LINK GOSSIP
	has_many :gossips

	#LINK CITY
	belongs_to :city

	#LINK COMMENT
	has_many :comments
end
