# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  body       :text(65535)      not null
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
