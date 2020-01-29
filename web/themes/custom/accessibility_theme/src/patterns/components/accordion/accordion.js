'use strict';

document.querySelectorAll('.accordion__wrapper').forEach(function(accordion) {
  let triggers = Array.prototype.slice.call(
    accordion.querySelectorAll('.accordion-trigger')
  );
  let panels = Array.prototype.slice.call(
    accordion.querySelectorAll('.accordion-panel')
  );

  triggers[0].setAttribute('aria-expanded', 'true');
  panels[0].removeAttribute('hidden');
  triggers[0].parentNode.parentNode.classList.add('section-open');

  accordion.addEventListener('click', function(e) {
    let target = e.target;
    let thisPanel = target.getAttribute('aria-controls');
    let thisParent = target.parentNode.parentNode;
    let isExpanded = target.getAttribute('aria-expanded') === 'true';
    let active = accordion.querySelector('[aria-expanded="true"]');

    if (target.classList.contains('accordion-trigger')) {
      if (active && active !== target) {
        active.setAttribute('aria-expanded', 'false');
        document
          .getElementById(active.getAttribute('aria-controls'))
          .setAttribute('hidden', '');
        active.parentNode.parentNode.classList.remove('section-open');
      }

      if (!isExpanded) {
        target.setAttribute('aria-expanded', 'true');
        document.getElementById(thisPanel).removeAttribute('hidden');
        thisParent.classList.add('section-open');
      }
      else {
        target.setAttribute('aria-expanded', 'false');
        document.getElementById(thisPanel).setAttribute('hidden', '');
        thisParent.classList.remove('section-open');
      }

      e.preventDefault();
    }
  });
});
