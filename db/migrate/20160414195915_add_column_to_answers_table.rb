class AddColumnToAnswersTable < ActiveRecord::Migration
  def change
    add_column :answers, :sport_id, :integer
  end
end
