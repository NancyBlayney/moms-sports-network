class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :query_id
      t.integer :user_id
      t.integer :admin_user_id
      t.integer :post_id
      t.text :body

      t.timestamps null: false
    end
  end
end
