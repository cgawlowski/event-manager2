require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  #Factory testing
  test "has a valid factory" do
    event = FactoryBot.build :event
    assert event.valid?
  end
  
  #Unit testing of the Event model
  test 'events are correctly created' do
    FactoryBot.create :event
  end

  test "a name is created" do
    event = FactoryBot.build :event
    event.name = ""
    refute event.valid?
  end

  test "should not save event without a name" do
    event = Event.new
    assert !event.save, "Saved the event without a title"
  end

  test "description is created" do
    event = FactoryBot.build :event
    event.description = ""
    assert event.valid?, "Description has not been added"
  end

  test "can't be saved if name is more than 32 characters" do
    event = FactoryBot.build :event
    event.name = "a very very very long name for that event"
    assert !event.save, "Event has been saved"
  end

  # test "user can create a new event" do
  #   visit root_path
    
  #   click_on "New Event"

  #   fill_in "name", with: "Event 1"
  #   fill_in "description", with: "Description of event 1"

  #   click_button "Create Event"

  #   assert_text "Event created", "Event has not been created"
  # end

end
