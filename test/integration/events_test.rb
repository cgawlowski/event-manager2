require "test_helper"

class EventsTest < ActionDispatch::IntegrationTest
  test 'home page works' do
    visit root_path

    assert_selector "h1", text: "hey"
  end
end
