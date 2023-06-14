<?php

use wbb\system\cache\builder\StatsCacheBuilder;
use wcf\system\cache\builder\UserStatsCacheBuilder;

use lexicon\system\cache\builder\StatsCacheBuilder as LexiconStatsCacheBuilder;
use blog\system\cache\builder\StatsCacheBuilder as BlogStatsCacheBuilder;
use clan\system\cache\builder\StatsCacheBuilder as ClanStatsCacheBuilder;
use filebase\system\cache\builder\StatsCacheBuilder as FilebaseStatsCacheBuilder;
use gallery\system\cache\builder\StatsCacheBuilder as GalleryStatsCacheBuilder;
use calendar\system\cache\builder\StatsCacheBuilder as CalendarStatsCacheBuilder;
use rdb\system\cache\builder\StatsCacheBuilder as RecipeStatsCacheBuilder;
use show\system\cache\builder\StatsCacheBuilder as ShowStatsCacheBuilder;


use wcf\system\WCF;

WCF::getTPL()->assign([
    'statistics' => array_merge(

        LexiconStatsCacheBuilder::getInstance()->getData(),
        BlogStatsCacheBuilder::getInstance()->getData(),
        ClanStatsCacheBuilder::getInstance()->getData(),
        FilebaseStatsCacheBuilder::getInstance()->getData(),
        GalleryStatsCacheBuilder::getInstance()->getData(),
        CalendarStatsCacheBuilder::getInstance()->getData(),
        RecipeStatsCacheBuilder::getInstance()->getData(),
        ShowStatsCacheBuilder::getInstance()->getData(),

        UserStatsCacheBuilder::getInstance()->getData(),
        StatsCacheBuilder::getInstance()->getData()
    )
]);
