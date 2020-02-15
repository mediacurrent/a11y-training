# Use ARIA attributes to communicate context

Another tenant for accessible development is to communicate with your computer. This is best accomplished by giving the browser some context using ARIA attributes.

Accessible Rich Internet Applications \(ARIA\) are a set of attributes that define ways to make web content and web applications \(especially those developed with JavaScript\) more accessible to people with disabilities.

It supplements HTML so that interactions and widgets commonly used in applications can be passed to assistive technologies when there is not otherwise a mechanism. For example, ARIA enables accessible navigation landmarks in HTML4, JavaScript widgets, form hints and error messages, live content updates, and more.

ARIA works behind the scenes to provide extra context to your browser without anything visible to the user.

Some examples:

* `aria-label`: What is this element? Ex. links
* `aria-expanded`: Is this element open or closed? Ex. accordions
* `aria-describedby`: What element describes this element? Ex. error text
* `aria-live`: Will this element be updated later? Ex. views exposed filter

{% hint style="info" %}
Read more about [ARIA Attributes](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA).
{% endhint %}

