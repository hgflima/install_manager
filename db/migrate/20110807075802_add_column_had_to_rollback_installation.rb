class AddColumnHadToRollbackInstallation < ActiveRecord::Migration
  def self.up
    add_column  :installations, :had_to_rollback, :boolean
  end

  def self.down
    remove_column :installations, :had_to_rollback
  end
end
