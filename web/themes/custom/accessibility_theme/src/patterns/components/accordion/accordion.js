!((document, Drupal, $) => {
  'use strict';

  /**
   * Creates behavior for footer menus to allow for open/close functionality.
   */
  Drupal.behaviors.accordion = {
    attach: function(context) {
      /**
       * Bind open/close action to list containers.
       * @param {string} container - Accordion conteainer.
       * @param {string} button - Toggle button.
       * @param {context} context - Drupal context.
       * @returns {void}
       */
      function accordionItems(container, button, context) {
        const $container = $(container, context);
        const $buttons = $container.find(button);

        $container.each(function() {
          const $accordionItem = $(this);
          $accordionItem.find(button).on('click', function() {
            const $self = $(this);
            // Removes the 'is-open' class from all accordion items
            // except the one we are currently clicking on.
            $container.not($accordionItem).removeClass('is-open');
            // Toggles on/off the 'is-open' tag on items we click on.
            $accordionItem.toggleClass('is-open');
            // Sets aria attributes to false on any items other
            // the one one we are clicking on.
            $buttons.not($self).attr('aria-expanded', 'false');
            $buttons.not($self).attr('aria-selected', 'false');
            // Sets aria attributes to tru on the item we click on.
            $self.attr('aria-expanded', 'true');
            $self.attr('aria-selected', 'true');
          });
        });
      }

      // Bind the function to the accordion.
      accordionItems('.accordion__item', '.accordion__toggle', context);
    }
  };
})(document, Drupal, jQuery);
