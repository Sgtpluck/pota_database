require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

  file = "db/SampleData.csv"

  CSV.foreach(file, :headers => false) do |row|

    WaterData.create!({
        lat: row[0],
        long: row[1],
        date: row[2],
        time: row[3],
        serial: row[4].to_i,
        downloads: row[5].to_i,
        vbatt: row[6].to_i,
        cycles: row[7].to_i,
        failed_cycles: row[8].to_i
      }
    )
  end

end