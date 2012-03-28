class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :pic_url
      t.string :pic_des

      t.timestamps
    end
  end
end
