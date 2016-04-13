class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.integer :sport_id
      t.string :title
      t.text :body
      t.string :link

      t.timestamps null: false
    end
  end
end
