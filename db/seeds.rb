
exp1 = Experement.create(name: 'button_color', created_at: 1.day.ago)

exp1.experement_options << ExperementOption.new(option: '#FF0000', value: '33')
exp1.experement_options << ExperementOption.new(option: '#00FF00', value: '33')
exp1.experement_options << ExperementOption.new(option: '#0000FF', value: '33')

exp1.save



require 'net/http'
require 'securerandom'

BASE_URL = 'http://localhost:3000/experements'

def make_request(device_token)
  uri = URI(BASE_URL)
  request = Net::HTTP::Get.new(uri)
  request['Device-Token'] = device_token

  response = Net::HTTP.start(uri.hostname, uri.port) do |http|
    http.request(request)
  end

  puts "Response Code: #{response.code} | Device-Token: #{device_token}"
end

600.times do |i|
  device_token = SecureRandom.hex(16)
  puts "Request ##{i + 1}: Device-Token=#{device_token}"
  make_request(device_token)
end

exp2 = Experement.create(name: 'price', created_at: 1.day.ago)

exp2.experement_options << ExperementOption.new(option: '10', value: '75')
exp2.experement_options << ExperementOption.new(option: '20', value: '10')
exp2.experement_options << ExperementOption.new(option: '50', value: '5')
exp2.experement_options << ExperementOption.new(option: '5', value: '10')

exp2.save

400.times do |i|
  device_token = SecureRandom.hex(16)
  puts "Request ##{i + 1}: Device-Token=#{device_token}"
  make_request(device_token)
end
