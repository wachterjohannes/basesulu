<?php 

namespace NCA\Tests\base;

use NCA\Tests\AcceptanceTester;
use NCA\Tests\Page\Base;

class LanguageCest
{
    public function _before(AcceptanceTester $I, Base $page)
    {
        $I->amOnPage($page::$URL);
        $I->waitForElement($page::$startpageHeadline);
    }

    // tests
    public function redirectToDe(AcceptanceTester $I)
    {
        $I->seeInCurrentUrl('/de');
    }

    public function headlineChangeOnLanguiageSwitch(AcceptanceTester $I, Base $page)
    {
        $defaultHeadline = $I->grabTextFrom($page::$startpageHeadline);
        $I->click($page::$navLangEn);
        $I->waitForElement($page::$startpageHeadline);
        $actualHeadline = $I->grabTextFrom($page::$startpageHeadline);

        $I->assertNotSame($defaultHeadline, $actualHeadline);
    }
}
