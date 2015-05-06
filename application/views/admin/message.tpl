{if isset($smarty.session.success)}
    <p class="bg-success">{$smarty.session.success}</p>
{elseif isset($smarty.session.error)}
    <p class="bg-danger">{$smarty.session.error}</p>
{/if}