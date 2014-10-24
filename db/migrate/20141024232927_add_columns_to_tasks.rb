class AddColumnsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :url, :string
    add_column :tasks, :notes, :text
    add_column :tasks, :completed, :boolean, default: false
    add_index :tasks, :completed
  end
end
