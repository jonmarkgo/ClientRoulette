class CreateCallers < ActiveRecord::Migration
  def self.up
    create_table :callers do |t|
      t.integer :phone
      t.integer :device
      t.integer :id

      t.timestamps
    end
  end

  def self.down
    drop_table :callers
  end
end
