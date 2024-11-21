# == Schema Information
#
# Table name: experement_options
#
#  id            :integer          not null, primary key
#  experement_id :integer
#  option        :string
#  value         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class ExperementOption < ApplicationRecord
  belongs_to :experement
  has_many :device_experiment_options
  has_many :devices, through: :device_experiment_options
end
