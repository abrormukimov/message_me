class MessagesController < ApplicationController
	def new
		@message = Message.new		
	end

	def create
		@message = Message.new(message_params)
		if @message.save
			redirect_to messages_path
		else
			render 'new'
		end
	end

end
