class DropTechnologiesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :technologies
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
