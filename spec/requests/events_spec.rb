require 'rails_helper'

describe 'Events API', type: :request do
  it 'returns all events' do
    FactoryBot.create(:event, name: 'Event1', description: 'description1', start_date: 2022-06-01, end_date: 2022-06-15)
    FactoryBot.create(:event, name: 'Event2', description: 'description2', start_date: 2022-07-01, end_date: 2022-07-15)

    get '/api/v1/events'
    
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end