class ChangeNotes < ActiveRecord::Migration
  def up
    remove_column :notes, :user
  end

  def down
    add_column :notes, :user
  end
end
