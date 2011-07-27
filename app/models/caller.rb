class Caller < ActiveRecord::Base
	has_one :caller_queue
	has_many :chats, :foreign_key => "caller1"
	has_many :chats, :foreign_key => "caller2"
end
