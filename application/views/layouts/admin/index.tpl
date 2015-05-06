<html>
    <head>
        <title>{block name='title'}{/block}</title>
        {block name='css'}
            {include file="layouts/admin/css/style.tpl"}
        {/block}
        {block name='javascript'}
            {include file="layouts/admin/js/javascript.tpl"}
        {/block}
    </head>
    <body>
        {include file="layouts/admin/header.tpl"}
        <div class="container starter-template">
            {block name='content'}{/block}
        </div>
    </body>
</html>
