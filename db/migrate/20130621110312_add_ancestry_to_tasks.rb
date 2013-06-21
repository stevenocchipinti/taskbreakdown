class AddAncestryToTasks < ActiveRecord::Migration
  def up
    add_column :tasks, :ancestry, :string
    add_index :tasks, :ancestry
  end

  def down
    remove_index :tasks, :ancestry
    remove_column :tasks, :ancestry
  end
end
