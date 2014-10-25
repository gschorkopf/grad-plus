class AddColumnImageUrlToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :image_url, :string
  end
end
