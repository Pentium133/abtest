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
require 'rails_helper'

RSpec.describe UserDevice, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
