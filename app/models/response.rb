# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
end
