class CreateQuestionResponseRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :question_response_relations do |t|
      t.references :question, foreign_key: true
      t.references :response, foreign_key: true

      t.timestamps
    end
  end
end
