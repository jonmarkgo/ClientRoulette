class CreateCallerQueues < ActiveRecord::Migration
  def self.up
    create_table :caller_queues do |t|
      t.integer :caller_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caller_queues
  end
end
