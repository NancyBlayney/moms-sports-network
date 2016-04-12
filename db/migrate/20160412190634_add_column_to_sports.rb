class AddColumnToSports < ActiveRecord::Migration
  def change
    add_column :sports, :description, :text
  end
end
