class WelcomeController < ApplicationController

def index	
	render :index
end	

def twilio
	render :twilio
end

def email
	render :email
end

def translate
	render :translate
end

def css
	render :css
end

end
