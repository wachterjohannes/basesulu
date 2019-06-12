<?php
namespace NCA\Tests\startpage;
use NCA\Tests\AcceptanceTester;
use NCA\Tests\Page\Page;

class searchCest
{
    public function _before(AcceptanceTester $I, Page $page)
    {
        $I->amOnPage($page::$startUrl);
        $I->waitForElement($page::$searchInput);
    }

    // tests
    public function validSearchWorks(AcceptanceTester $I, Page $page)
    {
        $searchString = 'ball';
        $I->fillField($page::$searchInput, $searchString);
        $I->click($page::$searchButton);

        $I->waitForElement($page::$searchResultCounter);

    }
}
