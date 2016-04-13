class CreateGarbs < ActiveRecord::Migration
  def change
    create_table :garbs do |t|
      t.integer :sport_id
      t.string :title
      t.text :body
      t.string :link

      t.timestamps null: false
    end
  end
end
