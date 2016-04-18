class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end
