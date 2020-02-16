/* eslint-disable max-len */
!((document, Drupal, $) => {
  'use strict';

  Drupal.behaviors.accordion = {
    attach: function(context) {
      const self = this;
      const $trigger = $('.accordion__toggle', context);

      if (!$trigger.length) {
        return;
      }

      $trigger.once('accordion-trigger').on('click', function() {
        self.toggleState($(this));
      });
    },

    toggleState: function($toggle) {
      const $accordionContainer = $toggle.closest('.accordion__items');
      const toggleExpandedValue = $toggle.attr('aria-expanded');

      $toggle.attr(
        'aria-expanded',
        toggleExpandedValue === 'true' ? 'false' : 'true'
      );

      const $accordionContent = $(
        '#' + $toggle.attr('aria-controls'),
        $accordionContainer
      );
      const accordionHiddenValue = $accordionContent.attr('aria-hidden');

      $accordionContent.attr(
        'aria-hidden',
        accordionHiddenValue === 'true' ? 'false' : 'true'
      );
    }
  };
})(document, Drupal, jQuery);
