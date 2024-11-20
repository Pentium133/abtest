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
require "test_helper"

class ExperementOptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
