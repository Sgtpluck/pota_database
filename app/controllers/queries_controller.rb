class QueriesController < ApplicationController
  def index
    @data = DataFinder.all_the_data
    # respond_to do |format|
    #   format.json { render json: @data, status: :ok }
    #   format.html { render json: @data, status: :ok}
    # end
  end

  def map
  end
end
