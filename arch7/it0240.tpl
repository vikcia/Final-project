{if $contentCategory}
	<div class="prod_list {if $mpDesignTemplate.contClass}{$mpDesignTemplate.contClass}{/if}">
		{foreach from=$products item=item name=row}
		{*								product list min max price ------------------------------------------------------------*}
		<div class="title">
			{if $item.sell_price > 0 && $item.attribute.aid ne 4}
			<div id="container1" class="price" {if $EThPriceClk2Cart}title="{#lng_add2cart#}"{/if}>
				{if $item.is_sale}{$item.sale_price}{else}{$item.price}{/if}
			</div>
			{elseif $item.attribute.aid == 4 && $item.id == 147}
			<div class="priceVar">
				€ {$minCk_value} - {$maxCk_value}
			</div>
			{elseif $item.attribute.aid == 4 && $item.id == 1025}
			<div class="priceVar">
				€ {$minArc_value} - {$maxArc_value}
			</div>
			{else}
			<div id="container1" class="price" {if $EThPriceClk2Cart}title="{#lng_add2cart#}"{/if}>
				{if $item.is_sale}{$item.sale_price}{else}{$item.price}{/if}
			</div>
			{/if}
			<a href="{$item.url}" class="prTitle_{$item.id}">{$item.title}</a>
		</div>

		<div>{$act_shop}</div>
		{if $item.has_params}
		<div class="param_block">
			<table cellspacing="0" cellpadding="0" class="params">
				{foreach from=$item.params item=param}
				<tr>
					<td class="var">{$param.fcap}:</td>
					<td class="val">{$param.val}</td>
				</tr>
				{/foreach}
				{if $prFileInList && $item.file}
				<tr class="fileAttachement">
					<td class="var">{#lngAttachedFile#}:</td>
					<td class="val"><a class="fileAttachement" {if $item.fileNewWindow}target="_blank"{/if}
									   href="{$item.fileUrl}">{$item.file}</a></td>
				</tr>
				{/if}
			</table>
		</div>
		{/if}

		{if $item.add2cartBtn == 1}<a class="btn add2cartInList"
									  href="javascript:add2cartSingle({$item.id});">{#lng_add2cart#}</a>{/if}
		{* $item.attribute.aid ne 4 - not equal 4*}
		{if $isCompare && $item.attribute.aid ne 4}<a href="javascript:add2compare({$item.id});"
													  class="compare_btn compHref_{$item.id}"><span>{#lng_do2compare#}</span></a>{/if}
	</div>
	{if ($smarty.foreach.row.index+1)%5 == 0}
	<div class="wrapper notresponsive"><!-- --></div>
	{/if}
	{/foreach}
	<div class="wrapper prodLst"><!-- --></div>
{/if}

{if $is_product}
<div class="product_cont {$eshopProdTemplate} {if $mpDesignTemplate.contClass}{$mpDesignTemplate.contClass}{/if}">
	
	<h3 class="header">{$txt_cap}</h3>
{*	                                 aid - product attribute*}
{*                                     4 = Product variacion*}
		{if $product_modifications_cnt > 1 && $eshopModPrSel == 'list' && $product.attribute.aid == 4}
		<div class="option-container" style="width:auto; padding-top:50px;">
			<h1>CHOOSE THE AUTOMATION ACCORDING TO THE SIZE AND HEIGHT OF THE GATE</h1>
				<div class="prod_list">
					{foreach from=$product_modifications item=item}
						<label class="container"><a class="productId" rel="nofollow" href="{$item.id}"></a>
							<div>{$item.title}</div>
							<input id="testradio" class="messageCheckbox" type="radio" checked="checked" name="gender" value="{$item.price}">
							<span class="checkmark"></span>
							<div>{$item.price}</div>
							<div><a href="{$item.url}">More information</a></div>
						</label>
					{/foreach}
				</div>
		</div>
		{/if}
		{literal}
			<script>
				$(":radio").on('change', function () {
					document.getElementById("result").innerHTML = $(this).val(); //791
				});
			</script>
		{/literal}
    </div>
</div>
{/if}