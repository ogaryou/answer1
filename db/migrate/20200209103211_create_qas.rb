class CreateQas < ActiveRecord::Migration[5.2]
  def change
    create_table :qas do |t|
      t.text :body, null: false
      t.text :content, null: false
      t.string :name
      t.boolean :checkbox
      t.text :ingredients
      t.timestamps
    end
  end
end
