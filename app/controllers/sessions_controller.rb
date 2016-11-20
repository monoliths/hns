class SessionsController < ApplicationController

	def create
		session = Session.new(session_params)
	end

	def show
		session = Session.find(params[:id])
		render json: session_json_formatter(session)
	end

	private
	def session_json_formatter(session)
		{ "id": "#{session.id}",
		  "produer_location": session.producer.location.as_json,
		  "consumer_location": session.consumer.location.as_json
		}
	end

	def session_params
		params.require(:session).permit(:consumer_id, :producer_id, :approval)
	end
end
