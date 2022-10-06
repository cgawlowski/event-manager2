require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest

  #Routes testing

  test "can get index" do
    get root_url
    assert_response :success
  end

  #Alternative way: an HTTP status code 200 means success
  test 'responds with 200 OK' do
    get '/api/events'
    _(response.status).must_equal 200
  end

  test "returns all events in JSON" do    
    get '/api/events'
  
    json = JSON.parse(response.body)
    _(json.size).must_equal 2
    _(json[0]['name']).must_equal 'Festival de Jazz de Montréal'
    _(json[1]['name']).must_equal 'Juste pour Rire'
  end

  # test "can get new" do
  #   get api_event_url
  #   assert_response :success
  # end

  # test "pass if user can create a new event" do
  #   visit root_path
    
  #   click_on "New Event"

  #   fill_in "name", with: "Event 1"
  #   fill_in "description", with: "Description of event 1"

  #   click_button "Create Event"

  #   assert_text "Event created", "Event has not been created"
  # end

end
