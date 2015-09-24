class CapstoneController < ApplicationController

def index	
	render "welcome/index"
end	

def twilio
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
