# == Schema Information
#
# Table name: experements
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Experement < ApplicationRecord
  has_many :experement_options

  def random_option
    range =  experement_options.sum(:value)
    random = rand(1..range)

    sum = 0
    experement_options.each do |option|
      sum += option.value.to_i
      return option if random <= sum
    end
    nil
  end
end
