<?php
namespace NCA\Tests\Page;

class Page
{
    // include url of current page
    public static $startUrl = '/';

    public static $searchInput = '#fulltext_search';
    public static $searchButton = '#page_header_search > form > div > div.input-group-button.searchmask__button-group > button > span.show-for-large';

    public static $searchResultCounter = 'body > div.dialog-off-canvas-main-canvas > div.off-canvas-wrapper > div > div > main > div > div.views-element-container > div > header > div.teaser-view__results-count';
}
