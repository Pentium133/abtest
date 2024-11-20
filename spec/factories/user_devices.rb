# == Schema Information
#
# Table name: user_devices
#
#  id               :integer          not null, primary key
#  device_id        :string
#  first_request_at :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :user_device do
    device_id { "MyString" }
    first_request_at { "2024-11-20 14:20:20" }
  end
end
