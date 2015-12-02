class TracksController < ApplicationController
	def index
		if params[:search]
			request = Typhoeus::Request.new(
				"https://api.spotify.com/v1/search?q=#{params[:search]}&type=track", 
				method: :get
				)
			request.run
			response = request.response.body
			response_json = JSON.parse(response)
			@tracks = response_json["tracks"]["items"]

			p @tracks
				@tracks.each do |track|
					p track["album"]["images"][0]["url"]
				end			
			render 'index'
		end
	end
end
