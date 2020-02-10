class HomeController < ApplicationController
	def show
		@gossip_arr = Gossip.all
	end
end
