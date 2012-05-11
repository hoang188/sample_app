class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.text :content
      t.string :source
      t.boolean :publish

      t.timestamps
    end
  end
 
end
