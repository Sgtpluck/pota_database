require 'spec_helper'

describe DataFinder do
  let!(:datum) { create(:water_datum) }
  let!(:datum1) { create(:water_datum1) }

  describe 'get all the data' do
    it 'should return all the records' do
      result = DataFinder.all_the_data

      expect(result.count).to be 2
    end
  end

  describe 'all_unique_serial_ids' do
    it 'should return two records with the uniq serial ids' do
      datum2 = create(:water_datum2)
      datum3 = create(:water_datum3)
      datum4 = create(:water_datum4)
      datum5 = create(:water_datum5)
      datum6 = create(:water_datum6)
      result = DataFinder.all_unique_serial_ids

      expect(result.count).to be 2
      expect(result).to match_array([datum1, datum4])
    end
  end
end