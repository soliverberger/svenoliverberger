<?php
use show\system\cache\builder\StatsCacheBuilder as ShowStatsCacheBuilder;
use poi\system\cache\builder\StatsCacheBuilder as PoiStatsCacheBuilder;
use gallery\system\cache\builder\StatsCacheBuilder as GalleryStatsCacheBuilder;
use calendar\system\cache\builder\StatsCacheBuilder as CalendarStatsCacheBuilder;
use blog\system\cache\builder\StatsCacheBuilder as BlogStatsCacheBuilder;
use rdb\system\cache\builder\StatsCacheBuilder as ReceiptStatsCacheBuilder;

use wcf\system\WCF;

WCF::getTPL()->assign([
    'statistics' => array_merge(
        ShowStatsCacheBuilder::getInstance()->getData(),
        PoiStatsCacheBuilder::getInstance()->getData(),
        GalleryStatsCacheBuilder::getInstance()->getData(),
        CalendarStatsCacheBuilder::getInstance()->getData(),
        BlogStatsCacheBuilder::getInstance()->getData(),
        ReceiptStatsCacheBuilder::getInstance()->getData()
    )
]);

<div class="gridLayout row footer-area">

<div class="col-md-6">
	<h3 class="gridBoxTitle" style="margin-bottom: 20px;">ÜBER MICH</h2>
	<p>Mein Name ist Sven Oliver Berger und ich habe mich entschlossen auf diesem Wege mein Profil im Internet preiszugeben.</p>
	<p>Diese Seite dient für mich als Blog, als Präsentation meinerseits, zum Protokollieren und Teilen meines erlernten Wissens.</p>
	<p>Meine besuchten Orte sind hier ebenfalls zu finden.</p>
	<p><br/></p>
	<span class="SocialLinks"><a href="{{ page="58" }}" title="Mein Blog"><span class="icon icon24 fa-blog"></span></a></span> · 
	<span class="SocialLinks"><a href="https://github.com/soliverberger/" title="GitHub"><span class="icon icon24 fa-github"></span></a></span> · 
	<span class="SocialLinks"><a href="https://discord.gg/f8fw6tZ4" title="Discord"><span class="icon icon24 fa-discord"></span></a></span> · 
	<span class="SocialLinks"><a href="https://steamcommunity.com/id/soliverberger/" title="Mein Profil von Steam"><span class="icon icon24 fa-steam"></span></a></span>
	<p><br/></p>
</div>
	
<div class="col-md-3">
	<h3 class="gridBoxTitle" style="margin-bottom: 20px;">INFORMATIONEN</h3>
	<ul class="gridBoxList">
		<li><a href='{{ page="49" }}'>Datenschutzerklärung</a></li>
		<li><a href='{{ page="79" }}'>Impressum</a></li>
		<li><a href='{{ page="146" }}'>Nutzungsbedingungen</a></li>
	</ul>
</div>	

	
<div class="col-md-3">
	<h3 class="gridBoxTitle" style="margin-bottom: 20px;">UNTERSTÜTZUNG</h3>
	<ul class="gridBoxList">
		<li><a href='{{ page="43" }}'>Kontaktformular</a></li>
		<li><a href='{{ page="147" }}'>Hilfe & Support</a></li>
		<li><a href='/db/article/section/95/'>Umgang mit dem WSC erlernen</a></li>
	</ul>
</div>

<div class="col-md-12">
	<div><hr class="trennlinie"></div>
</div>	

<div class="col-md-6 footer-area-bottom">
	<h3 class="gridBoxTitle">Projekt aktiv seit...</h3>
	<p>{if $scForumOnlineTime|isset}{$scForumOnlineTime}{/if}<br/><a href="/events/event/1/" style="font-size: 13px; color: #7dc9c5;">(Genaues Datum: Montag, der 06. November 2006)</a></p>
</div>
					
<div class="gridBox col-md-6 footer-area-bottom">
	<p class="gridBoxTitle">"Wer sich über das freut was er hat, hat keine Zeit mehr, darüber zu klagen, was er nicht hat."</p>
	<p>- Ernst Ferstl, aus seinem Buch "Kurz und fündig. Gedanken mit Tiefgang" (1995)</p>
</div>

<div class="gridBox col-md-12">
<div class="footer-copyright">
<p align="center"> 
<a href='/gallery/user-album-list/1/' style="color: #0da9ef;">{#$statistics[albums]}</a> erstellte Alben · <a href='/gallery/user-image-list/1/' style="color: #0da9ef;">{#$statistics[images]}</a> hochgeladene Bilder
 · <a href='/gallery/user-video-list/1/' style="color: #0da9ef;">{#$statistics[videos]}</a> hochgeladene Videos · <a href='/blog/user-entry-list/1/' style="color: #0da9ef;">{#$statistics[entries]}</a> geschriebene Blog-Artikel · <a href='/showroom/user-entry-list/1/' style="color: #0da9ef;">{#$statistics[entrys]}</a>  Schaufenster-Einträge</p>
<p><a href='/db/rezepte/user-recipe-list/1/' style="color: #0da9ef;">{#$statistics[recipes]}</a> erstellte Rezepte · <a href='/events/user-event-list/1/?past=1' style="color: #0da9ef;">{#$statistics[events]}</a> Termine</p>
<p>Bereits besuchte Orte: <a href='/besuchte-orte/user-poi-list/1/' style="color: #0da9ef;">{#$statistics[pois]}</a> (Nach meinen Aufzeichnungen)</p>
</div>
</div>

<div class="gridBox col-md-12">
<div class="footer-copyright">
	<p>Diese Seite wurde erstellt mit viel ❤️, 🎧 und ☕.</p>
	<p><br/></p>
	<p>{include file='pageFooterCopyright'}</p>
	
</div>
</div>

</div>
