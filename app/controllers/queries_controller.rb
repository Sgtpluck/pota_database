class QueriesController < ApplicationController
  def index
    @data = DataFinder.all_the_data
  end

  def map
    @data = DataFinder.all_unique_serial_ids
  end

  def bar
    @data = DataFinder.all_unique_serial_ids
    # http://localhost:3000/bar_query?=&lat=124&long=-45
  end
end
