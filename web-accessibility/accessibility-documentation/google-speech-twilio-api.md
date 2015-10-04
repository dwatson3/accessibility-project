Tutorial: 

How to use google web speech api with twilio api. Using speech recognition software to send as output to a mobile phone. 

This project was inspired by the use of technology being cross-platform. For example, this demonstration is being used from my laptop, but it can be used in a browser on a mobile phone.

Or perhaps by a user that doesn't have a smart phone, or doesn't have a smart phone with SIRI capability. Either way, users who don't have a phone or phone capabilities can use this demo. 

This demo is made possible with the use of Rails, I incorporated the Google Web Speech API into my twilio.html.erb file.


Directions:

Starting out, Google provides a helpful tutorial on how to use their speech-to-text API. I will walk you through how the code is working. You need to download the codelab files from the tutorial to see the various speech-to-text demos.

Once you have your basic code in place with HTML and JavaScript, you can style your speech-to-text API in whichever layout you choose - whether it be Bootstrap, CSS, or Sass. In this case, I am using Sass and Bootstrap. The code comes with a reset.css file, as well as some styling incorporated into the HTML file. 

In this demo I used the provided code from codelab1solution.html into my index.html.erb file. I created three separate files using HTML, CSS, and JavaScript, as well as including images and the webspeech.js file.  

Looking at the HTML code provided in the codelab1solution.html file, let's check out how this code is working: 

<code>
<form action="http://localhost:3000/capstone/twilio" method="get">
  	<input name="q" id="input_field" size="100">
</form>
</code>

The form get method is retrieving the input named "q" from the input field. Input q is standing as our user's input. Below the previous code you'll find the code button with the JavaScript function reco.toggleStartStop(). Styling on this button is applied with border, and transparent as the background color. The image tag "mic.gif" is acting as the button.

<code>
	<form action="http://google.com/search" method="get">
  	<input name="q" id="input_field" size="100">
	</form>

<button onclick="reco.toggleStartStop()" style="border: 0; background-color:transparent">
  	<img id="status_img" src="mic.gif" alt="Start">
  </button>
</code>

This script tag is calling in the webspeech.js file.

<code>
<script src="webspeech.js"></script>
</code>

At the end of this html file, apply the script tag. This script file is calling the var reco, with the JavaScript function WebSpeechRecognition(). 

In the webspeech.js file, we see that this Javascript function is creating and returning the new WebSpeechRecognition object. 

reco.onEnd is holding a function with a boolean statement saying if the reco.final_transcript is not equal to an empty value, submit the user's input to the form. 

<code>
	<script>
		var reco = new WebSpeechRecognition();
		reco.statusText('status');
		reco.statusImage('status_img');
		reco.finalResults('input_field');

		reco.onEnd = function() {
  		if (reco.final_transcript != '') {
    	input_field.form.submit();
  		}
		};
	</script>
</code>

In my controller file in Rails, I created a file called demo_controller.rb.

When setting up my index controller, I placed my twilio API inside my index controller. 

I set an if boolean statement, stating if the params[:q] is called from my user input's form.  

You can sign up for a free Twilio trial, and with that get a free phone number to send your input data to. 

Since I am using Ruby, I followed the Ruby documentation on how to apply the following code to getht API working. 

<code>
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
</code>

 If input is being passed into params[:q]

 requiring the 'rubygems', 
 requiring 'twilio-ruby',

credentials are added in with your account information.

account_sid = #account_sid info goes here
auth_token = #auth_token info goes here

Client is setup to talk to the Twilio REST API.
	@client = Twilio::REST::Client.new
	account_sid, auth_token

The message variable is calling the create message with this account:

 message = @client.account.messages.create(:body => params[:q],
	:to => "+18005551234", #phone number example
	:from => "+18005436789") #phone number example

The message is then sent out with message.sid, with the message authorized with the account_sid number information.
























