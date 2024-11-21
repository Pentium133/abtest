# == Schema Information
#
# Table name: device_experiment_options
#
#  id                   :integer          not null, primary key
#  experement_option_id :integer
#  device_id            :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  experement_id        :integer          not null
#
class DeviceExperimentOption < ApplicationRecord
  belongs_to :experement_option
  belongs_to :device, class_name: "UserDevice"
end
