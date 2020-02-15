# Keyboard navigation

Navigating a website through keyboard interaction is one of the most important aspects of accessibility. Individuals with motor disabilities and blind or visually imparied users lean on good keyboard functionality to navigate a site. Beyond impairments, some users just prefer keyboard navigation, such as vim or terminal users.

Some common mistakes with solutions include:

## Overriding or removing `:focus`

Removing the focus state on an element disables the ability for users to know where their keyboard is currently focused. Custom styling overrides browser defaults, which removes a consistent user experience. If possible, leave it alone or make sure it is highly visible when employed.

## Abusing visual reordering with flexbox/CSS Grid

Visual reordering does not affect the actual markup, which can create a logical disparity when a user is navigating through keyboard. This should be avoided if possible, or change the markup.

## Using the `<a>` tag for interactive elements \(use `button` instead\).

If a user can interact with it, and it doesn’t take you anywhere, use a `button`. Beyond being good semantics, this will also ensure that screen readers will not announce interactive features as links.

## Not trapping your modals/mega menus

If a modal pops up, a keyboard user may have to navigate the entire site before coming to the actual markup and being able to dismiss it. With a modal, place it outside the main container, then when it appears, add `tabIndex=-1` to the main container. This will ensure that the user only has to navigate the modal.

This also applies to nested or mega menus. Don’t force a user to navigate through every single link. If a user needs to expand a nested menu, ensure that functionality is the same for a keyboard user by adding `tabIndex=-1` on the nested menu then removing it when activated.

## Only listening for `click` events

If you have a gallery or other interactive features, make certain that a person can use all the functionality with a keyboard. If not, you may have to add additional listeners for `keyup` and `keydown`.

## Only hiding elements visually

If the element is only hidden visually, then a user with a keyboard may tab to that element and have no idea where they are on the page. Employ `tabIndex` or hide it completely.

## Missing "_skip to main content_" link

With every page load, keyboard users have to go through common top level elements such as the header and navigation before reaching content. If you have a lot of navigation elements, this means they must tab over every item before reaching the content. A simple solution is to provide a “Skip to main content” link as the first element on every page to allow users to bypass lengthy navigation and therefore improve accessibility and user experience.

