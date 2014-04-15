json.title 'PotaVida Serial Unit Collections'

json.xAxis do
  json.categories @data.map(&:serial)
end