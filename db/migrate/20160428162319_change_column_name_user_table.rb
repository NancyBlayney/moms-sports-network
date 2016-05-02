class ChangeColumnNameUserTable < ActiveRecord::Migration
  def change
  	rename_column :comments, :user_id, :member_id
  end
end
