class AddUserIdTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :user_id, :number    
    add_foreign_key :todos, :users, column: :user_id
  end
end
