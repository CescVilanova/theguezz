class RemoveActualResultsTable < ActiveRecord::Migration
  
  def up
    drop_table :actual_results
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
end
