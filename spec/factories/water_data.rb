# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :water_datum, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-04-10 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end

   factory :water_datum1, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-04-11 10:29:50"
    serial 2
    vbatt 1
    cycles 1
    failed_cycles 1
  end

    factory :water_datum2, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-03-15 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end

   factory :water_datum3, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-02-10 10:29:50"
    serial 2
    vbatt 1
    cycles 1
    failed_cycles 1
  end

    factory :water_datum4, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-04-11 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end

   factory :water_datum5, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-03-20 10:29:50"
    serial 2
    vbatt 1
    cycles 1
    failed_cycles 1
  end

    factory :water_datum6, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-04-06 10:29:50"
    serial 1
    vbatt 1
    cycles 1
    failed_cycles 1
  end

   factory :water_datum7, :class => 'WaterData' do
    lat "MyString"
    long "MyString"
    time "2014-04-09 10:29:50"
    serial 2
    vbatt 1
    cycles 1
    failed_cycles 1
  end
end
