class DataFinder
  attr_reader :params_hash

  def initialize(params_hash)
    @params_hash = params_hash
  end
  
  def self.all_the_data
    WaterData.all
  end

  def self.all_unique_serial_ids
   # grab the most recent of all the unique items
    find_uniq_ids
    @most_recent_ids.map do |id|
      WaterData.find(id)
    end
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
