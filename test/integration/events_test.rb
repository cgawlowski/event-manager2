require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  describe 'GET events' do


    #Test to make sure it renders JSON
    it 'responds with 200 OK' do
      get '/api/events'
      response.status.must_equal 200
    end

    #Testing the content
    it 'returns all posts' do
      get '/api/events'
      json = JSON.parse(response.body)
      json.size.must_equal 2
      json[0]['name'].must_equal 'Festival de Jazz de Montréal'
    end

  end
end
