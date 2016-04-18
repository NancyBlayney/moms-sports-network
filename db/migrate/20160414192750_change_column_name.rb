class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :signs, :caption, :name
  end
end
