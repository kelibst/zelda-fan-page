class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_names, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :text
    add_column :users, :cover_image, :text
  end
end
