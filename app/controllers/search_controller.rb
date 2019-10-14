class SearchController < ApplicationController
  def index
    @members = SearchFacade.new(params[:house]).search_members
    @house = params[:house]
  end
end
