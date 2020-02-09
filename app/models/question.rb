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

class Question < ApplicationRecord
  has_many :question_response_relations
  has_many :response, through: :question_response_relations
end
