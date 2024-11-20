require 'rails_helper'

RSpec.describe 'AP test API', type: :request do
  before(:all) do
    @headers = { 'Device-Token' => '5616245234' }
  end
  it 'returns a list of AB test' do
    let (:experement) { create :experement }
    get '/experements', headers: @headers

    puts response.body
  end
end