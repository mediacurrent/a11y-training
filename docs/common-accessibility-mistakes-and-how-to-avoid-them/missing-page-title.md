# Missing page title

Every page needs a title tag. A title tag is the text you see in the browser’s tab bar and it goes in the `<head>` section in a HTML document. The structure of the title tag is as follows:

```text
<head>
  <title>A descriptive and unique page title</title>
</head>
```

A unique and accurately described HTML page title is critical for accessibility, as this is the first content a screen reader will announce out loud. This makes it possible for someone using a screen reader to determine if the content is important or not.

Proper page titles are not only good for accessibility, but they also present benefits for SEO. The page title is what you will see in the list of results when searching content in any search engine like Google or Yahoo.

When content on a page changes dynamically, it is important the page title reflects the changes. This often times can be accomplished with JavaScript. Consider the following example: a website visitor using a screen reader is filling out a form. Let’s say this is a multi-step form where every page presents different content. If the page title does not reflect the correct information, this will create confusion and frustration to the user.

For a multi-step form, it might help for the page title to be structured like “Enrollment Form Step 1 of 4,” “Enrollment Form Step 2 of 4,” etc. so that the person using the form has an idea of where they are at in the process each time they hit the “next” button.

