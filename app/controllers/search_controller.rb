class SearchController < ApplicationController
	def search
	@search = params[:query]
	end
end
