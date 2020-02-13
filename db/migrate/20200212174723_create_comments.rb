class CreateComments < ActiveRecord::Migration[5.2]
	def change
		create_table :comments do |t|
			t.string :content

			#LINK USER
			t.belongs_to :user, index: true

			#LINK GOSSIP
			t.belongs_to :gossip, index: true

			t.timestamps
		end
	end
end
