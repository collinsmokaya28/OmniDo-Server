class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    t.string :text
    t.string :category
    t.boolean :done
    t.string :user_id

    t.timestamps null: false
  end
end
