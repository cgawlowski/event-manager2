require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  describe 'GET events' do

    it 'responds with 200 OK' do
      get '/api/events'
      response.status.must_equal 200
    end
  end
end
