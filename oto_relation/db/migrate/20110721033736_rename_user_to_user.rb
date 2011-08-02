class RenameUserToUser < ActiveRecord::Migration
  def self.up
  rename_column :users, :name, :username
  end

  def self.down
  end
end
