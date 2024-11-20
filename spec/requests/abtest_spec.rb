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
end
