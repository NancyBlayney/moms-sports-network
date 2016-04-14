class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :sport_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
