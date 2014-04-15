json.title 'PotaVida Serial Unit Collections'

json.xAxis do
  json.categories @data.map(&:serial)
end

value = (1..10).map {|n| n+1}

json.series [['cycles', 'Disinfection Cycles'],['failed_cycles','Failures'],['downloads', 'Downloads']].each do |name|
      json.name name[1]
      json.data @data.map {|data| data.send(name[0]) }
end
