{* Extend our master template *}
{extends file="master.tpl"}

{* This block is defined in the master.php template *}
{block name=title}
    {$title}
{/block}

{* This block is defined in the master.php template *}
{block name=body}
    {if !empty($body)}
        {$body}
    {else}
        fuck
    {/if}
{/block}