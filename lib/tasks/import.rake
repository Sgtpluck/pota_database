require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

  file = "db/SampleData.csv"

  CSV.foreach(file, :headers => true) do |row|

    WaterData.create!({
        lat: row[0],
        long: row[1],
        time: (DateTime.parse(row[2])),
        serial: row[3].to_i,
        downloads: row[4].to_i,
        vbatt: row[5].to_f,
        cycles: row[6].to_i,
        failed_cycles: row[7].to_i
      }
    )
  end

end