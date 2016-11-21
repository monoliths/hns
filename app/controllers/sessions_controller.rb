class SessionsController < ApplicationController
	VALID_SESSION_SEARCH_PARAMS = [:producer_id, :consumer_id, :id]

	def create
		session = Session.new(session_params)

		if session.save
			render json: session
		else
			render json: session.errors, status: :unprocessable_entity
		end
	end

	def show
		session = Session.find(params[:id])
		render json: session_json_formatter(session)
	end

	def session_search
		# only want valid params to be sliced out of the provided params
	    search_params = params.slice(*VALID_SESSION_SEARCH_PARAMS).deep_symbolize_keys

	    # execute the search
	    session = Session.find_by(search_params)

	    if session
	      render json: session 
	    else
	     render json: { "error": "resource not found" } , status: 404
	    end
	end

	private
	def session_json_formatter(session)
		{ 
			"id": "#{session.id}",
		  	"produer_location": session.producer.location.as_json,
		  	"consumer_location": session.consumer.location.as_json,
		  	"approval": session.approval
		}
	end

	def session_params
		params.require(:session).permit(:consumer_id, :producer_id, :approval)
	end
end
