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

end
