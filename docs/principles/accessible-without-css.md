# A Site should be accessible without CSS

Your markup should make your page like a well-structured outline. This way, if someone isn’t using visual cues on your site, they can still understand the content on the page and how they can interact with it.

The best way to check to ensure your markup is structured adequately is by removing CSS from your site to see how a screen reader would read the content.

## To remove CSS from a site:

1. In the Chrome devtools console (right-click > Inspect),
2. enter the following into the Console tab: ```document.head.parentNode.removeChild.(document.head);```

{% hint style="info" %}
You can save this in the bookmarks tab of your browser to make this easy to implement across any page quickly.
{% endhint %}

You’ll see the CSS disappear from the page.

## Questions to ask yourself as you look at the page with CSS removed:
* Can you still understand the content on the page?
* Does the structure of the site make sense? Is content in the right order?
* Is the content organized? Does each section have the right heading tag?
* Can you understand the main points of the page by skimming the content, like you would a good outline?
* Do interactive elements still look interactive?
* Do inputs have labels?

Responding to any deficiencies you see when CSS is removed is a great way to ensure your site is accessible to screen readers.
