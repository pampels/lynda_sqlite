class PublicController < ApplicationController
	def albums
		@albums = Album.all.order('title ASC')
	end
end
