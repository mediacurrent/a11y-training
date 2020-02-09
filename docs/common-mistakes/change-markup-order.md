# Change markup order with CSS

The `order` property in Flexbox and CSS Grid lets you visually reorder the content in a page sometimes needed to achieve a design or layout requirement. However, using the `order` property will negatively affect accessibility by creating a disconnect between the visual presentation of content and DOM order.

The problem with the `order` property is that it  doesn’t change the markup order in the DOM/HTML document. Someone using keyboard navigation or a screen reader will still experience the content in the original order it was written, and this will create great confusion when using assistive technologies.

The `order` property is fine if you only use it for visual reordering, such as design-heavy grids with visual elements. However, anything with content or text that could be important to the site or user that doesn’t have the right order of markup may become difficult to understand from an accessibility standpoint.

For instance, if you fail to use the right order markup for a list that has steps the user has to follow to fill out a form, the screen reader may read the steps in the wrong order. The user will become frustrated that they are taking the steps read to them but not progressing in the form like they thought because, unbeknownst to them, they have heard the steps out of order.

To reduce confusion, go back and update the source order instead of using CSS. When you need to change the order of content, change the markup. Doing the naked test in CSS may help you identify this problem so you can improve the accessibility on your site.
