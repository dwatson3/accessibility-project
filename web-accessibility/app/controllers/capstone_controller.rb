class CapstoneController < ApplicationController

def index	
	render "capstone/index"
end	

def twilio
	if params[:q]

		require 'rubygems' # not necessary with ruby 1.9 but included for completeness
		require 'twilio-ruby'

		# put your credentials here
		account_sid = ENV["ACCOUNT_SID"]
		auth_token = ENV["AUTH_TOKEN"]

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.messages.create(:body => params[:q],
			:to => "+15303015894",
			:from => "+15307630890")

		puts message.sid

		@textinformation = params[:q]

		render :twilio
	end
	
end

def email
	render "capstone/email"
end

def translate
	render "capstone/translate"
end

def css
	render "capstone/css"
end

end
