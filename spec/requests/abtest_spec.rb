require 'rails_helper'

RSpec.describe 'AB test API', type: :request do
  before(:all) do
    @headers = { 'Device-Token' => '5616245234' }
  end

  let!(:experement) { create(:experement) }

  it 'returns a list of AB test' do
    get '/experements', headers: @headers

    expect(response).to have_http_status(:ok)
    puts JSON.parse(response.body)
  end
end
