<?php

namespace NCA\Tests\dwx;

use NCA\Tests\AcceptanceTester;
use NCA\Tests\Page\DWX;

class SpeakerCest
{
    public function _before(AcceptanceTester $I, DWX $page)
    {
        $I->amOnPage($page::$speakerUrl);
        $I->waitForElement($page::$speakerInputSearch);
    }

    // tests
    public function seperateNameFindItems(AcceptanceTester $I, DWX $page)
    {
        $searchString = 'gregor';
        $I->fillField($page::$speakerInputSearch, $searchString);
        $titles = $I->grabMultiple($page::$speakerItemName);

        foreach($titles as $title)  {
            $I->assertContains($searchString, strtolower($title));
        }
    }
}
