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
class UserDevice < ApplicationRecord
  before_create :set_first_request_time

  private

  def set_first_request_time
    self.first_request_at ||= Time.current
  end
end
