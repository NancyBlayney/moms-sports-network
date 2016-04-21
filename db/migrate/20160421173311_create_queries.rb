class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.boolean :approved
      t.integer :sport_id

      t.timestamps null: false
    end
  end
end
