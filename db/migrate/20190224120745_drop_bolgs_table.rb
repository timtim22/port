class DropBolgsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :bolgs
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
