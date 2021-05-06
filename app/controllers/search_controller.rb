class SearchController < ApplicationController
  
  def index    
  end

  #new query
  def new
  end

  def query
    if params[:query]
      @qs = params[:query].downcase(:turkic)
      @mps= Mp.where("LOWER(name) LIKE :search OR LOWER(surname) LIKE :search OR LOWER(name2) LIKE :search OR LOWER(detail) LIKE :search", search: "%"+@qs+"%")    
      respond_to do |format|
        format.html { render "search/index", mps: @mps}
      end
    end
  end

end
