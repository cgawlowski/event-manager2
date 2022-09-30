require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  #Factory testing
  test "has a valid factory" do
    event = FactoryBot.build :event
    assert event.valid?
  end
  
  #Unit tests
  test 'events are correctly created' do
    FactoryBot.create :event
  end

  test "requires a name" do
    event = FactoryBot.build :event
    event.name = ""
    refute event.valid?
  end

  test "characters limit of 34" do
    event = FactoryBot.build :event
    event.description = ""
    assert event.valid?
  end

  test "requires a description" do
    event = FactoryBot.build :event
    event.description = ""
    assert event.valid?
  end

end
