class CreateChats < ActiveRecord::Migration
  def self.up
    create_table :chats do |t|
      t.integer :caller1
      t.integer :caller2
      t.integer :start_time
      t.integer :end_time
      t.integer :reason

      t.timestamps
    end
  end

  def self.down
    drop_table :chats
  end
end
