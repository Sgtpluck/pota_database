class DataFinder
  attr_reader :params_hash

  def initialize(params_hash)
    @params_hash = params_hash
  end

  def date_range
    puts @params_hash[:beginning_date].inspect
     WaterData.where(time: (@params_hash[:beginning_date]..@params_hash[:ending_date])).group(:cycles).count.sort
  end
  
  def self.all_the_data
    WaterData.all
  end

  def self.most_recent_unique_serial_ids
   # grab the most recent of all the unique items
    find_uniq_ids
    @most_recent_ids.map do |id|
      WaterData.find(id)
    end
  end

  def self.counting_vbatt
    find_uniq_ids
    WaterData.where(id: @most_recent_ids).group('round((vbatt::numeric),2)').count.sort
  end

  def self.histo_cycle
    find_uniq_ids
    WaterData.where(id: @most_recent_ids).group(:cycles).count.sort
  end

  def self.how_many_read_histo
    WaterData.group(:time).count
  end

  private

  def self.find_uniq_ids
    @most_recent_ids = []
    serial_number = []
    WaterData.all.order('time DESC').each do |data|
      unless serial_number.include? data.serial
        @most_recent_ids << data.id
        serial_number << data.serial
      end
    end 
  end
end
