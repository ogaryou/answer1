# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  body       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
belongs_to :qa, optional: true
end
