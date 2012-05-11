class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :articles, :description, :text
  end
end