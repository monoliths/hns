class SessionController < ApplicationController
	before_action: :authenticate_request
	def index
		@session = current_user.producer + current_user.consumer
		unless @session
			render json: []
		else
			render json: @session
		end
	end
end