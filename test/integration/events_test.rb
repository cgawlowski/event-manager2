require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  describe 'GET events' do

    #Test to make sure it renders JSON
    it 'responds with 200 OK' do
      get '/api/events'
      response.status.must_equal 200
    end

    #Testing...
    it 'returns all posts' do
      get '/api/events'
      json = JSON.parse(response.body)

      #... the number of examples
      json.size.must_equal 2
      
      #... the names and description for both events
      json[0]['name'].must_equal 'Festival de Jazz de Montréal'
      json[0]['description'].must_equal 'MyString1'
      json[1]['name'].must_equal 'Juste pour Rire'
      json[1]['description'].must_equal 'MyString2'
    end

  end
end
