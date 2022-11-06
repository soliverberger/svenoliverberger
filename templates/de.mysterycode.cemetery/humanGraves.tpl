{assign var=encodedLetter value=$letter|rawurlencode}

{capture assign='contentHeaderNavigation'}
	{if $canAddGrave}
		<li><a href="{link controller='HumanGraveAdd' application='cemetery'}{/link}" title="{lang}wcf.global.button.rss{/lang}" class="button"><span class="icon icon16 fa-plus"></span> {lang}cemetery.human.grave.add{/lang}</a></li>
	{/if}
{/capture}

{capture assign='headContent'}
	{capture assign='canonicalURLParameters'}sortField={@$sortField}&sortOrder={@$sortOrder}{if $letter}&letter={@$letter|rawurlencode}{/if}{/capture}

	{if $pageNo < $pages}
		<link rel="next" href="{link controller='HumanGraves' application='cemetery'}pageNo={@$pageNo+1}&{@$canonicalURLParameters}{/link}">
	{/if}
	{if $pageNo > 1}
		<link rel="prev" href="{link controller='HumanGraves' application='cemetery'}{if $pageNo > 2}pageNo={@$pageNo-1}&{/if}{@$canonicalURLParameters}{/link}">
	{/if}
{/capture}

{capture assign='sidebarLeft'}
	{if $items || !$letter|empty}{include file='graveFilterSidebar' application='cemetery' controller='HumanGraves'}{/if}
	{if $__boxSidebar|isset && !$__boxSidebar|empty}{@$__boxSidebar}{/if}
{/capture}

{include file='header'}

{hascontent}
	<div class="paginationTop">
		{content}{pages print=true assign=pagesLinks controller='HumanGraves' application='cemetery' link="pageNo=%d$canonicalURLParameters"}{/content}
	</div>
{/hascontent}

{event name='beforeGraveList'}

{if $items}
	{include file='graveListContainer' application='cemetery' graveList=$objects}
{else}
	<div class="info">{lang}cemetery.grave.noHumans{/lang}</div>
{/if}

<footer class="contentFooter">
	{hascontent}
		<div class="paginationBottom">
			{content}{@$pagesLinks}{/content}
		</div>
	{/hascontent}

	{hascontent}
		<nav class="contentFooterNavigation">
			<ul>
				{content}
					{event name='contentFooterNavigation'}
				{/content}
			</ul>
		</nav>
	{/hascontent}
</footer>

<script data-relocate="true">
	require(['WoltLabSuite/Core/Controller/Clipboard'], function (ControllerClipboard) {
		ControllerClipboard.setup({
			hasMarkedItems: {if $hasMarkedItems|isset}{$hasMarkedItems}{else}0{/if},
			pageClassName: "cemetery\\page\\HumanGravesPage",
			pageObjectId: null,
		});
	});
</script>

{include file='footer'}
