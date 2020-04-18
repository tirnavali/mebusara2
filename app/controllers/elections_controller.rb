class ElectionsController < ApplicationController
	def index
		@elections = Election.all
		@period = Period
		@mp = Mp

	end
end
