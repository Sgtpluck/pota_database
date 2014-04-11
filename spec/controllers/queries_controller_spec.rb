require 'spec_helper'

describe QueriesController do
  before do
    request.env['HTTP_ACCEPT'] = 'application/json'
  end

  describe "get 'index'" do
    it 'should be succesful' do
      get 'index'

      expect(response).to be_successful
    end

    it 'should get all the data' do
      datum = create(:water_datum)
      datum2 = create(:water_datum1)
      get 'index'

      expect(assigns(:data)).to match_array([datum, datum2])
    end
  end

  describe "get 'map_query'" do
    it 'should be successful' do
      get 'map'

      expect(response).to be_successful
    end
  end
end
