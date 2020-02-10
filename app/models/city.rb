class City < ApplicationRecord
	validates :name, presence: true
	validates :zip_code, presence: true

	#LINK USER
	has_many :users
	#LINK GOSSIP
	has_many :gossips
end
