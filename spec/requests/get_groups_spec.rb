require 'rails_helper'

FactoryBot.find_definitions
describe "get all groups route", :type => :request do
  let!(:groups) { FactoryBot.create(:group)}

  before { get '/groups'}

  it 'returns all groups' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
