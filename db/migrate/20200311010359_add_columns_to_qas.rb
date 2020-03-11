class AddColumnsToQas < ActiveRecord::Migration[5.2]
  def change
    add_column :qas, :user_id, :integer
  end
end
