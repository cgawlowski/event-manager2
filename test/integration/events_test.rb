require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  test 'events are correctly created' do
    FactoryBot.create :event
  end

end
