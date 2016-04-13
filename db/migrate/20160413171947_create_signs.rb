class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.integer :sport_id
      t.integer :rule_id
      t.string :caption
      t.string :gif

      t.timestamps null: false
    end
  end
end
