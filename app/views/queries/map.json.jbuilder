json.water_datum @data do |datum|
  json.extract! datum, :time, :id, :lat, :long, :serial, :vbatt, :cycles, :failed_cycles, :downloads, :created_at
end