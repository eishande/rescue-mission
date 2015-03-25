class UsersStartOver < ActiveRecord::Migration
  def up
    drop_table :identities
    drop_table :users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
