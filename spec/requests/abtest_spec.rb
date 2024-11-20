require 'rails_helper'

RSpec.describe 'AB test API', type: :request do
  before(:all) do
    @headers = { 'Device-Token' => '5616245234' }
  end

  let!(:experement) { create(:experement) }

  it 'returns a list of AB test' do
    create(:experement_option, experement: experement, option: '#FF0000', value: '33')
    create(:experement_option, experement: experement, option: '#00FF00', value: '33')
    create(:experement_option, experement: experement, option: '#0000FF', value: '33')

    get '/experements', headers: @headers

    expect(response).to have_http_status(:ok)
  end

  it 'returns the same experiment option for the same device' do
    create(:experement_option, experement: experement, option: '#FF0000', value: '33')
    create(:experement_option, experement: experement, option: '#00FF00', value: '33')
    create(:experement_option, experement: experement, option: '#0000FF', value: '33')

    get '/experements', headers: @headers
    expect(response).to have_http_status(:ok)
    first_response = JSON.parse(response.body)

    get '/experements', headers: @headers
    expect(response).to have_http_status(:ok)
    second_response = JSON.parse(response.body)

    expect(second_response).to eq(first_response)
  end

  it 'only returns experiments created before the first request' do
    UserDevice.create!(device_id: @headers["Device-Token"], first_request_at: 1.hour.ago)

    old_experement = create(:experement, created_at: 1.day.ago)
    create(:experement_option, experement: old_experement, option: '#FF0000', value: '100')

    new_experement =  create(:experement, created_at: Time.current)
    create(:experement_option, experement: new_experement, option: '#0000FF', value: '100')

    get '/experements', headers: @headers
    expect(response).to have_http_status(:ok)
    first_response = JSON.parse(response.body)

    expect(first_response.map { |e| e['experiment_id'] }).to include(old_experement.id)
    expect(first_response.map { |e| e['experiment_id'] }).not_to include(new_experement.id)
  end
end
