# == Schema Information
#
# Table name: device_experiment_options
#
#  id                   :integer          not null, primary key
#  experement_option_id :integer
#  device_id            :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  experement_id        :integer          not null
#
require 'rails_helper'

RSpec.describe DeviceExperimentOption, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
