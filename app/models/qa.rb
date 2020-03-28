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
  belongs_to :user
  validates :body, presence: true, length: { maximum: 1000 }
  validates :content, presence: true, length: { maximum: 1000 }
  has_one :response
  
  def user
    return User.find_by(id: self.user_id)
  end

  def create
    qa = Qa.new(
      body: "1000-1000=?",
      content: "0",
      user_id: "1"
    )
  end  
end
