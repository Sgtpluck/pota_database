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

  def histo
    @data = DataFinder.new(params).date_range
     # HTTParty.get("http://localhost:4000/histo_query?=&beginning_date=2014-04-16+10:45:44+-0700&ending_date=2014-04-09+10:46:11+-0700")
  end
end
