{extends '../../layouts/admin/index.tpl'}
{block name='content'}
    <h1>Users</h1>
    <a href="">Add new</a>
    <table class="table table-bordered">
        <tr>
            <td class="active">#</td>
            <td class="success">Name</td>
            <td class="warning">Price</td>
            <td class="danger">Sale</td>
            <td class="info">Image</td>
            <td class="info">Categories</td>
            <td class="info">Action</td>
        </tr>
        {foreach from=$products item=product}
            <tr>
                <td>{$product.id}</td>
                <td>{$product.name}</td>
                <td>{$product.price}</td>
                <td>{$product.sale}</td>
                <td><img src="{base_url()}{$product.image}" width="50"/></td>
                <td>{$product.list_name}</td>
                <td>Delete</td>
            </tr>
        {/foreach}
    </table>
    {$pagination}
{/block}
