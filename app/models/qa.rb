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
#  user_id     :integer
#

class Qa < ApplicationRecord
  validates :body, presence: true, length: { maximum: 1000 }
  validates :content, presence: true, length: { maximum: 1000 }
  has_one :response
  belongs_to :user
end
