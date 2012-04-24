class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.integer :priority
      t.boolean :display

      t.timestamps
    end
  end
end
