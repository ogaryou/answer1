# == Schema Information
#
# Table name: question_response_relations
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint
#  response_id :bigint
#
# Indexes
#
#  index_question_response_relations_on_question_id  (question_id)
#  index_question_response_relations_on_response_id  (response_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (response_id => responses.id)
#

class QuestionResponseRelation < ApplicationRecord
  belongs_to :question
  belongs_to :response
end
