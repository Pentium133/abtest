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
end
