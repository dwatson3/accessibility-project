Applying WAI-ARIA and CSS to improve Web Accessibility

In this tutorial, I’ll be going over how to apply WIA-ARIA standards as well as CSS features to improve the accessibility of your webpage. 

What is WAI-ARIA, and what is it used for?

WAI-ARIA stands for the Web Accessibility Initiative - Accessible Rich Internet Applications, being technical standards that increase the accessibility of your web page. 

WAI-ARIA standards help screen reader users structure web content and navigate through sections of web content. 

What are screen readers?

Screen readers are software programs that help blind or visually disabled users read the text displayed on the computer screen with an audio voice or a braille display. 

Screen readers are used by people with visual disabilties. Visually impaired users can access web content with the use of screen readers. 

Screen reader users expereince web pages by hearing the title of the web page, then the following text in the order that it appears in the document. 

For screen readers, web content is text-based, and it doesn't matter if text is on the left, right, or any other position on a page. Artistic or visual design doesn't matter to screen readers, neither adding nor taking away from the experience. Screen readers are meant to read text content. 

Testing your web content with screen readers gives developers the chance to evaluate content from a perspective of a blind user. Screen readers are good evaluators as to how accurate your image alternative text is, as well as identifying any issues involving elements, reading order, etc on a webpage. 

The ARIA navigation feature I will be covering in this tutorial are ARIA landmark roles. 

ARIA landmark roles help screen readers navigate through sections of page content. In addition, there are many other ARIA features that can be found at the Web Accessibility Initiative. 

There are 8 ARIA landmarks that you can apply to HTML5 Elements.

The types are:

banner, which is <header>
complementary, which is <aside>
contentinfo, which is <div> acting as the footer
form, which is <form> or <div>
main, which is <main>
navigation, which is <nav>
search, which is <form> or <div>
and application, which is <div>

For the main heading title of your webpage, apply a <div role="banner"> to structure your title content.
For example, <div role="banner"> Banner Here </div>

For the navigation bar of your web page, apply a <div role="navigation"> for screen readers to access the navigation bar. 

For the main content of your web page, apply a <div role="main"> in order to set hierarchal importance on your page. 

For the secondary content on your web page, apply a <div role="complementary">.

If you have a form on your web page, apply a <div role="form">. 

For a search form, place a <div role="search"> around the search bar. 

For the footer of your webpage that usually contains contact or copyright information, place a <div role="contentinfo"> around it.  

When these tags are added to the structure of your document, screen readers are able to navigate through your web page, as an audio guide through the sections of your web page. 


This next section covers how to improve general accessibility with the use of HTML and CSS. 


Correctly Structure Headings in HTML files

Screen reader users typically use the heading HTML structure to navigate through content. When headings are set up correctly on a website, screen readers can easily interpret the content of your website. 

For example, use the h1 tag for the main title of your page. Avoid using the h1 tag for anything other than the title of your website and other individual pages. 

If there are words on the page that you want to appear as big or bold, or as a header purely for decoration, make sure to style them appropriately with CSS with classes or ids, rather than the h1 tag. 


Include Alt Text Information for Images

Include the appropriate alt text information for images. When alt text is provided for images, screen readers can understand the message conveyed by the use of the images on the web page. For example, alt text information would be necessary for informative images, like infographics. Also, if the image includes text, that text should be included in the alt. For example:

<img src="yosemite.gif" alt="Yosemite National Park">


However if there is an image used purely for decorative purposes, the alt text can be left empty so that the screen reader can read other important information on the webpage. 

When an image is the only content of a link, the screen readers will read that file name if alt text is not included. When images are included as links, always provide alt text as well.


Properly Describe Links On Your Webpage

Use descriptive text information that describes where the link goes to. Give your links descriptive names. 

For example, creating a “click here” link is not considered effective, and isn’t useful for a screen reader user. The most important context of the link should be introduced first, because screen readers will usually direct to the links list via searching the first letter. 

For example, if you are pointing visitors to a page called “About Us”:
Avoid saying: “Click here to read about our company.”
Instead, say: “To learn more about our company, read About Us.”


Color Contrast Tips

It’s important to make sure that the look and feel of your website works for all diverse users. There are ways to check if there is sufficient color contrast between your font color and background color.

Use Simulators for design reviews to create empathy and to view your web design from a different perspective. Check the color contrast to make sure that your web design meets the minimum color-contrast ratio of the WCAG 2.0 AA. 

The WCAG 2.0 AA color-contrast ratio is 4.5 to 1 for normal text and 3 to 1 for large text. 

Two resources you can use:

WebAIM Color Contrast Checker, a browser-based resource to test color codes specified in hexadecimal values. 

The Paciello Group’s Colour Contrast Checker, an application available for Macs or PCs, which tests color codes with RGB values. 


Testing Color Codes for Web Designs

To check font colors against color backgrounds, you can use the resource WebAIM Color Contrast Checker to test samples. 


Improving Font Readability using the Line-Height Property

Not only do you want your focus to be on making your font look nice, but it’s important to improve readability. You can do this by adjust the line-height. Use a line-height between 1.2 and 1.6 times normal can improve readability, creating space between lines of text. 


Styling for Links 

When creating links for your website, you can remove the default underline and place a slight underline with CSS. The underline can be a couple pixels away from the text. 

Some example CSS styling would be:

text-decoration: none
border-bottom: 1px #000 solid
padding-bottom: 2px

Another option for styling links: when your link is in a hover or focus state, you want to make sure it stands out from the rest of the font on the page. A way to do this is to reverse the colours when on hover or focus. 
 
The :hover class will change the look of a link when you hover over with your mouse. For users that are not using a mouse, use the :focus class. 

So you’ll want your links to change on focus and hover - and apply focus, hover, and active. Example code to reverse the colours would be:

<code>
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
</code>

To hide content off the webpage for a screen reader to read, you can create a class to send the info off to the left. An example:

.hidden {
position: absolute;
clip: rect(1px 1px 1px 1px) For IE6, IE7
clip: rect(1px, 1px, 1px, 1px);
}

The clip property is deprecated, but still works with most browsers. The clip-path property is newer, but I found that it’s not currently working as of yet.  

Here is a summary of WAI-ARIA and CSS tips to improve the accessibility of your web page. Adding these features will improve the experience for all of your diverse users. 
