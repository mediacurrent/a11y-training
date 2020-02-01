# Not descriptive enough links

It is common to find content on blog posts or on homepages that is meant to entice the user to continue reading. These are often structured like `<a href=“/“>Read more</a>`. However, this causes a problem because if the link title doesn’t give you context, then you end up thinking “Read more what? Read more where? What’s going to happen when I click this link?”

Each link should be able to stand alone with the proper context because between the use of screen readers and keyboard navigation, users with assistive technologies may see content on all links but not understand the context. Visually the “read more” links may make sense; however, web design is about more than visual design.

When you end up with a list of teasers, for instance, the screen reader or keyboard assistant may display or say “read more” several times, and the user will have no idea what the context is.

In most cases the right description for links is already part of the content you are providing.  So instead of displaying “read more” on your links, you can change the text to read something like “Learn more about xxx” (where xxx can be the topic you are discussing. A more technical approach to solving this problem is to use the `aria-label` attribute within your links. The `aria-label` attribute provides a way to place a descriptive text label on an object, such as a link, when there are no elements visible on the page that describe the object. This is not only read by screen readers and other assistive technologies, but allows you to put better content to give the user more context about what to expect next in the content.  Here’s an example of a link using the `aria-label` attribute:
```
<a href="hike.html" aria-label="Read more about our hiking trails">Read more...</a>
```
