class ElectionsController < ApplicationController
	before_action :yetkili?, only: [:new, :create, :edit, :update, :destroy]
	def index
		@elections = Election.all
		@period = Period
		@mp = Mp
	end

	def new
		@election = Election.new
		@parties = Party.all
		@periods = Period.all
		@mps 	= Mp.all
	end

	def create
		@election = Election.new(election_params)	
		
		respond_to do |format|
			if @election.save
				format.html { redirect_to :elections, notice: "Kayıt başarılı"}
			else
				format.html {render :new}
			end
		end
	end


	private
	def election_params
	  params.require(:election).permit(:province, :other_province_name, :period_id, :party_id, :mp_id)
	end

end
