{extends '../../layouts/admin/index.tpl'}
{block name='content'}
    <form method="post" action="{base_url()}admin/categories/update">
        <h2>Edit Category</h2>
        {include 'admin/message.tpl'}
        <div class="form-group">
            <label>Tên</label>
            <input type="hidden" name="id" value="{$category->id}">
            <input type="text_field" class="form-control" placeholder="Nhập tên ..." name="name" value="{$category->name}" />
        </div>
        <fieldset>
            <legend>Lists</legend>
            {foreach from=$lists item=list}
                <div class="form-group">
                    <input type="text_field" class="form-control" placeholder="Nhập tên ..." name="category_list_name[{$list.id}]" value="{$list.name}" />
                    <a class="btn btn-danger remove_fields" href="javascript:void(0)">Remove</a>
                </div>
            {/foreach}
        </fieldset>
        <div class="form-group">
            <a href="javascript:void(0)" class="btn btn-success" id="add_list">+</a>
        </div>
        <input type="submit" class="btn btn-success" value="Save">
    </form>
    <script type="text/javascript">
        $(document).ready(function(){
            $.fn.categories.init();
        });
    </script>
{/block}