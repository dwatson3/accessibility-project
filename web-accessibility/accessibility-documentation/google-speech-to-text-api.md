Tutorial: 
How to Create a Speech To Text API for Email Messaging. 
The importance of Speech Recognition Software.

What is speech recognition software?

Speech recognition software allows users the ability to process spoken word into text on the screen. It replaces the need to type words with the keyboard.

Popular speech recognition technologies (for both users with and without disabilities) include foreign language learning, voice activated products for the blind, and writing software to help improve writing skills for individuals with physical impairments. 

This software helps people improve their access to the computer, and can help users with various disabilities that normally prevent access, including: limited motor skills, repetitive strain injuries (including carpal tunnel syndrome), limited in the English language, vision impairments, physical disabilities, and learning disabilities such as dyslexia and dysgraphia.

Some benefits with this software include skill improvement in writing abilities, writing production, and core reading. In order to fully utilize the best performance from speech recognition, it requires a quiet environment so that your computer microphone can clearly understand you.

This tutorial shows you how to code a simple speech-to-text app to write and send emails, with the use of a google speech-to-text API. 

Directions:

Starting out, Google provides a helpful tutorial on how to use their speech-to-text API. I will walk you through how this code works. You need to download the codelab files from the tutorial to see the various speech-to-text demos.

Once you have your basic code in place with HTML and JavaScript, you can style your speech-to-text API in whichever layout you choose - whether it be Bootstrap, CSS, or Sass. In this case, I am using Sass and Bootstrap. The code comes with a reset.css file, as well as some styling incorporated into the HTML file. 

In this demo I used the provided code from codelab3solution.html asinto my index.html. I created three separate files using HTML, CSS, and JavaScript, as well as including images and the webspeech.js file.  



Step 1: Adding in the script file. 

Our “webspeech.js” library implements a WebSpeechRecognition object, includes multiple helper functions within that object. This file is also included in the tutorial zip we previously downloaded.

The WebSpeechRecognition object directs output to our “input_field”.

You’ll notice this code below - the div id for “div_language” in the “codelab3.html” file. The codelab3.html calls in the webspeech.js file.



Step 2: Add the microphone button to apply the start/stop recognition.

From here you’ll see the code for the microphone button in the HTML file, which calls microphoneButton() when clicked. h calls in the JavaScript onclick function called microphoneButton().


The onclick button responds to the JavaScript function for microphoneButton(). The function retrieves the BCP47 value from the selection, and passes it to the recognition object. When the user has the option of selecting a language, the script file is populating the select option with the various language options. The languages are included with their BCP47 tags, also known as a IETF language tag. This is an abbreviated language code, for example “en” for English or “pt-BR” for Brazilian Portuguese. Then it calls the toggleStartStop() as before. 


Step 3: Add Status Text for the user.

The <code><div></code> element displays status information, and is placed above the div with an id of “status.” 

This corresponds to reco variable var reco, and reco.statusText.
  
The microphone button in your HTML performs a search after a successful speech recognition session. The callback function for the onEnd event checks to see if any results were returned, and if they were returned, the form is submitted.

When the user has the option of selecting a language, the script file is populating the select option with the various language options. The languages are included with their BCP47 tags, also known as a IETF language tag. This is an abbreviated language code, for example “en” for English or “pt-BR” for Brazilian Portuguese. 

The code at the bottom of your file before the script tag contains all of the languages placed within var langs.


Now that you have a basic understanding of what’s going on under the hood of this application, open your web app in the terminal with the command python -m SimpleHTTPServer. This will allow you to access your page when you type in localhost:8000. 

When you have inputted your audio with the microphone button, you can then press the email button and click on the email option of your choice to send. This is a simple demo on how to encourage developers to make web content is accessible for a diversity of users. 

















