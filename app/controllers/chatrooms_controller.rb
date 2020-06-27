class ChatroomsController < ApplicationController
	def index
		@messages = Message.all		
	end
end
