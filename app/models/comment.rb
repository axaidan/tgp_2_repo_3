class Comment < ApplicationRecord
	validates :content, presence: true

	#LINK USER
	belongs_to :user

	#LINK GOSSIP
	belongs_to :gossip
end
