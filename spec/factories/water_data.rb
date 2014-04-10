# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :water_datum, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    date "2014-04-10"
    time "2014-04-10 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end

   factory :water_datum1, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    date "2014-04-10"
    time "2014-04-10 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end
end
