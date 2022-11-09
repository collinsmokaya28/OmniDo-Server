class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :text
      t.string :category
      t.boolean :done
      t.string :user_id
  
      t.timestamps null: false
    end
  end
end
