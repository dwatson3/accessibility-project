class CapstoneController < ApplicationController

def index	
	render "welcome/index"
end	

def twilio

	if params[:q]

		require 'rubygems' # not necessary with ruby 1.9 but included for completeness
		require 'twilio-ruby'

		# put your credentials here
		account_sid = 'AC59ab62afc51d409ec8848087d997a822'
		auth_token = 'e3e0337ebd1836041fd1210bbc9d520e'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.messages.create(:body => params[:q],
			:to => "+15303015894",
			:from => "+15307630890")

		puts message.sid

		@textinformation = params[:q]

	end
	render "welcome/twilio"
end

def email
	render "welcome/email"
end

def translate
	render "welcome/translate"
end

def css
	render "welcome/css"
end

end
