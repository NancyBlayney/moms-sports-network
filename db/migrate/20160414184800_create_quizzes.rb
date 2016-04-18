class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :sport_id
      t.string :name
      t.integer :length

      t.timestamps null: false
    end
  end
end
