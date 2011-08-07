class CreateInstallations < ActiveRecord::Migration
  def self.up
    create_table :installations do |t|
      t.string :project
      t.string :project_code
      t.string :description
      t.boolean :installed_on_approval
      t.boolean :server_to_install_batch
      t.boolean :server_to_install_web
      t.boolean :server_to_install_messaging
      t.date :production_installation_date

      t.timestamps
    end
  end

  def self.down
    drop_table :installations
  end
end
