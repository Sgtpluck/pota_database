class QueriesController < ApplicationController
  before_action :unique_current, except: [:index, :histo, :batt, :histo_cycle, :bar]

  def index
    @data = DataFinder.all_the_data
  end

  def map
  end

  def bar
    @data = DataFinder.most_recent_unique_serial_ids[0..50]
  end

  def histo
    @data = DataFinder.new(params).date_range
     # HTTParty.get("http://localhost:4000/histo_query?=&beginning_date=2014-01-01+10:45:44+-0700&ending_date=2014-01-30+10:46:11+-0700")
  end

  def histo_cycle
    @data = DataFinder.histo_cycle
    render 'batt'
  end

  def batt
    @data = DataFinder.counting_vbatt
  end

  private

  def unique_current
    @data = DataFinder.most_recent_unique_serial_ids
  end

end
