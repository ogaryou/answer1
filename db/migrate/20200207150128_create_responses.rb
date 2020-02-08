class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :question, foreign_key: true
      t.text :body, null: false

      t.timestamps
    end
  end
end
