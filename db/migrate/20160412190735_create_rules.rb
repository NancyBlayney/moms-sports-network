class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :sport_id
      t.text :body

      t.timestamps null: false
    end
  end
end
