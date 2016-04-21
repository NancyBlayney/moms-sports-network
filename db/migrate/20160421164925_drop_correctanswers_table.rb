class DropCorrectanswersTable < ActiveRecord::Migration
  def up
    drop_table :correctanswers
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
