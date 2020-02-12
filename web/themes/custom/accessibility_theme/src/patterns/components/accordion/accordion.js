!((document, Drupal, $) => {
  'use strict';

  /**
   * Use this to describe what your behavior does.
   */
  Drupal.behaviors.accordion = {

    attach: function(context) {
      // If you don't need jQuery:
      // 1. Remove the `jQuery` and `$` refrences from this file.
      // 2. Remove the `core/jquery` dependency from the accordion library
      //    within the accessibility_theme.libraries.yml file.
    }
  };
})(document, Drupal, jQuery);
