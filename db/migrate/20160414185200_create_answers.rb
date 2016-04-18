class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :quiz_id
      t.integer :question_id
      t.string :body

      t.timestamps null: false
    end
  end
end
