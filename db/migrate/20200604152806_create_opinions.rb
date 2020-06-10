class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
