class PublicController < ApplicationController
	def albums
		@albums = Album.all
	end
end
