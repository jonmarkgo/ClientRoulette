require 'twilio-ruby'
class RouletteController < ApplicationController

def index
end

def spin
	@caller = Caller.new
	@caller.device = rand(10 ** 30)
	@caller.save
	@account_sid = "AC75a34a5b4f997a0fac291ad12a393b41"
@auth_token = "dfeee30b2f0be0434df1a7314898c03f"
@capability = Twilio::Util::Capability.new(@account_sid, @auth_token)
@application_sid = "AP91efb83a90cb8a75eee8fc9cbabcddf7"


@capability.allow_client_incoming(@caller.device)
@capability.allow_client_outgoing(@application_sid)
@token = @capability.generate
end

def thumbsup
end

def thumbsdown
end

end
