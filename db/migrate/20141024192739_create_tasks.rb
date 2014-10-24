class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :school_id
    end

    add_index :tasks, :school_id
  end
end
