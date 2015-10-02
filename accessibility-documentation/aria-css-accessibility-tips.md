Tips for CSS and Accessibility

In this tutorial, I’ll be going over how to use CSS to improve the usability and accessibility of your website. 

Correctly Structure Headings in HTML files

Screen reader users typically use the heading HTML structure to navigate through content. When headings are set up correctly on a website, screen readers can easily interpret the content of your website. 

For example, use the <h1> tag for the main title of your page. Avoid using the <h1> tag for anything other than the title of your website and other individual pages. 

If there are words on the page that you want to appear as big or bold as a header purely for decoration, make sure to style them appropriately with CSS with classes or ids, rather than the <h1> tag. 

Do Make Sure to Include Alt Text Information for Images

Including the appropriate alt text information for images. When alt text is provided for images, screen readers can understand the message conveyed by the use of the images on the web page. For example, alt text information would be necessary for informative images, like infographics. Also, if the image includes text, that text should be included in the alt. For example:

<img src="smiley.gif" alt="Smiley face">


However, if there is an image used purely for decorative purposes, the alt text can be left empty so that the screen reader can read the important information on the webpage. 

When an image is the only content of a link, the screen readers will read that file name if alt text is not included. When images are included as links, always provide alt text. 

Properly Describe Links On Your Webpage

Use descriptive text information that describes where the link goes to. Give your links descriptive names. 

For example, creating a “click here” link is not considered effective, and isn’t useful for a screen reader user. The most important context of the link should be introduced first, because screen readers will usually direct to the links list by searching via the first letter. 

For example, if you are pointing visitors to a page called “About Us”:
Avoid saying: “Click here to read about our company.”
Instead, say: “To learn more about our company, read About Us.”

Color Contrast Tips

It’s important to make sure that the look and feel of your website works for all diverse visual users. There are ways to check if there is sufficient color contrast for web content. 

To make sure that there is a minimum color-contrast ratio for both normal and large text on a background.  

Use Simulators for a design review to create empathy and the web design differently. Check the color contrast to confirm that the web design meets the minimum color-contrast ratio of the WCAG 2.0 AA. The WCAG 2.0 AA color-contrast ratio is 4.5 to 1 for normal text and 3 to 1 for large text. 

Two resources you can use:

WebAIM Color Contrast Checker, a browser-based resource to test color codes specified in hexadecimal values. 

The Paciello Group’s Colour Contrast Checker, an application available for Macs or PCs, which tests color codes with RGB values. 

Testing Color Codes for Web Designs

To check font colors against color backgrounds, you can use the resource WebAIM Color Contrast Checker to test samples. 


Improving Font Readability using the Line-Height Property

Not only do you want your focus to be on making your font look nice, but it’s important to improve the readability. You can do this by adjust the line-height. Use a line-height between 1.2 and 1.6 times normal can improve readability by creating space between lines of text. Learn more about line height.

Styling for Links 

When creating links for your website, you can remove the default underline and place a slight underline with CSS. The underline can be a couple pixels away from the text. 

Some example CSS styling would be:

text-decoration: none
border-bottom: 1px #000 solid
padding-bottom: 2px

When your link is in a hover or focus state, you want to make sure it stands out from the rest of the font on the page. A way to do this is to reverse the colours when on hover or focus. 
 
The :hover class will change the look of a link when you hover over with your mouse. For users that are not using a mouse, use the :focus class. 

YSo you’ll want your links to change on focus and hover - and apply focus, hover, and active. Example code to reverse the colours would be:

a:link {
	background: #fff;
	color: #000;
	font-weight: bold;
	text-decoration: none; 
	border-bottom: 1px #000 solid; 
	padding-bottom: 2px;
}
a:visited {
	background: #fff;
	color: #800080;
	font-weight: bold;
	text-decoration: none; 
	border-bottom: 1px #000 solid; 
	padding-bottom: 2px;
}
a:focus, a:hover, a:active {
	background: #000;
	color: #fff;
	font-weight: bold;
	text-decoration: none; 
	border-bottom: 1px #000 solid; 
	padding-bottom: 2px;
}


To hide content off the webpage for a screen reader to read, you can create a class to send the info off to the left. An example:

.hidden {
position: absolute;
clip: rect(1px 1px 1px 1px) For IE6, IE7
clip: rect(1px, 1px, 1px, 1px);
}

The clip property is deprecated, but still works with most browsers. The clip-path property is newer, but I found that it’s not currently working.  

In summary, here are some examples to add to your website to improve the accessibility for all users. Design accessibility ensures that the style and layout of web content includes all users. 
