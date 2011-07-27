class Chat < ActiveRecord::Base
	belongs_to :caller, :foreign_key => "caller1"
	belongs_to :caller, :foreign_key => "caller2"
end
