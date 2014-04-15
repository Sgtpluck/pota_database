json.title 'PotaVida Serial Unit Collections'

json.xAxis do
  json.categories @data.map(&:serial)
end


json.series do
    json.array! ['cycles','failed_cycles','downloads'] do |name|
      json.name name
      json.data @data.map {|data| data.send(name) }
    end
end
