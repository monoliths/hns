class SessionController < ApplicationController
	def index
		@session = current_user.producer + current_user.consumer
		unless @session
			render json: []
		else
			render json: @session
		end
	end
end
