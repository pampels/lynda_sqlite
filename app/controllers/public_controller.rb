class PublicController < ApplicationController
	skip_before_filter :authorize
	def albums
		@albums = Album.all.order('title ASC')
		render layout: "albums"
	end
end
