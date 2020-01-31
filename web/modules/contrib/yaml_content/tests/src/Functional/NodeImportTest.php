<?php

namespace Drupal\Tests\yaml_content\Functional;

use Drupal\node\NodeInterface;
use Drupal\Tests\BrowserTestBase;

/**
 * Tests general Node creation functionality.
 *
 * @group yaml_content
 */
class NodeImportTest extends BrowserTestBase {

  /**
   * Directory where test files are to be created.
   *
   * @var \org\bovigo\vfs\vfsStreamContent $contentDirectory
   */
  protected $contentDirectory;

  /**
   * Prepared Content Loader service for testing.
   *
   * @var \Drupal\yaml_content\ContentLoader\ContentLoader $contentLoader
   */
  protected $contentLoader;

  /**
   * Modules to enable.
   *
   * @var array
   */
  protected static $modules = [
    // Core dependencies.
    'node',
    'field',
    'user',
    'filter',
    'text',

    // This module.
    'yaml_content',
  ];

  /**
   * {@inheritdoc}
   */
  public function setUp() {
    parent::setUp();

    // Create our article content type.
    $this->createContentType([
        'type' => 'article',
        'name' => 'Article',
      ]);

    // Prepare the content loader.
    $this->contentLoader = \Drupal::service('yaml_content.content_loader');
    // Look for content files in the tests directory.
    $this->contentLoader->setContentPath(drupal_get_path('module', 'yaml_content') . '/tests');
  }

  /**
   * Create a basic node.
   */
  public function testCanCreateNode() {
    $entities = $this->contentLoader->loadContent('basic_node.content.yml');

    $this->assertTrue(is_array($entities), 'An array was not returned from loadContent().');
    $this->assertEquals(1, count($entities), 'No entity IDs were returned from loadContent().');

    /** @var \Drupal\Core\Entity\Entity $entity */
    $entity = reset($entities);

    $this->assertEquals('node', $entity->getEntityTypeId(), 'The entity type created was not a Node.');
    $this->assertEquals('article', $entity->bundle(), 'An article Node was not correctly created.');
    $this->assertEquals('Basic Article', $entity->label(), 'An article\'s title was not correctly assigned.');

    // Confirm body field content.
    $body_value = $entity->get('body')->get(0)->getValue();
    $this->assertEquals('full_html', $body_value['format'], 'Body field format was not correctly assigned to "full_html".');

    $expected_content = <<<END_OF_VALUE
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vobis
voluptatum perceptarum recordatio vitam beatam facit, et quidem corpore
perceptarum. Tum Quintus: Est plane, Piso, ut dicis, inquit.</p>
<p>Primum cur ista res digna odio est, nisi quod est turpis? Duo Reges:
constructio interrete. Rhetorice igitur, inquam, nos mavis quam
dialectice disputare?</p>

END_OF_VALUE;

    $this->assertEquals($expected_content, $body_value['value'], 'Body field content was not correctly assigned.');

    return $entity;
  }

}
