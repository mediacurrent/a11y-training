# Hiding content

One of the first things people writing CSS learn when trying to hide content from view is `display: none;`

This rule is very effective for completely hiding content from the screen. However, this is a rule that has been used for many years without realizing the harm being done to users who rely on assistive technologies such as a screen reader. We see this with form labels most typically. If a placeholder text is being used or an icon to indicate the inputs use, often the label is hidden. This prevents the assistive tech from being able to see the label, and so making the form confusing. 

The “**clip pattern**” can hide the content visually yet provide the content to screen readers. Unlike CSS positioning and negative text-indent techniques, the “clip pattern” also works with RTL \(Right-to-Left\) languages for localization.

To hide content without causing an undue burden on screen readers and the people who use them, you might use one of the techniques below:

* `aria-hidden='true'` - This attribute can be useful when there are visual cues that screen readers do not need to announce, such as decorative icons accompanying text labels.
* HTML5 `hidden`attribute - This attribute can be useful for newer browsers using assistive technology like screen readers. However, for older browsers such as IE9, use this snippet -  `[hidden] { display: none !important;}`

Here's a code snippet that uses the `clip` CSS property for visually hiding content while still making it available to screen readers:

```css
.visually-hidden {
  position: absolute !important;
  height: 1px;
  width: 1px;
  overflow: hidden;
  clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
  clip: rect(1px, 1px, 1px, 1px);
  white-space: nowrap; /* added line */
}
```

