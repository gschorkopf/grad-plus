class AddColumnsToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :due_date, :date
    add_column :schools, :city, :string
    add_column :schools, :state, :string
    add_column :schools, :board_pass_rate, :integer
  end
end
