class DropRable < ActiveRecord::Migration
  def up
    drop_table :incidents
  end

  def down
  end
end
