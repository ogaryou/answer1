# == Schema Information
#
# Table name: qas
#
#  id          :bigint           not null, primary key
#  body        :text(65535)      not null
#  checkbox    :boolean
#  content     :text(65535)      not null
#  ingredients :text(65535)
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
