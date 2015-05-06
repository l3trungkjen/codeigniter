{extends file = '../../layouts/admin/index.tpl'}
{block name='content'}
    <h1>Categories</h1>
    <form method="post" action="{base_url()}admin/categories/update_position">
        <menu id="nestable-menu">
            <button class="btn btn-success" type="submit" data-action="change">Thay đổi vị trí</button>
            <button class="btn btn-success" type="button" data-action="expand-all">Mở rộng tất cả</button>
            <button class="btn btn-success" type="button" data-action="collapse-all">Thu gọn tất cả</button>
        </menu>
        {include file='admin/message.tpl'}
        <div class="dd" id="nestable2">
            <ol class="dd-list">
                {foreach from=$categories item=category}
                    <li class="dd-item" data-id="{$category.id}">
                        <div class="dd-handle">{$category.name}</div>
                        <div style="float: right; margin-right: 8px; margin-top: -31px">
                            <a class="btn btn-info btn-xs" href="{base_url()}admin/categories/edit/{$category.id}">Update</a>
                            <a class="btn btn-danger btn-xs" href="{base_url()}admin/categories/destroy/{$category.id}" onclick="return confirm('You are sure?');">Delete</a>
                        </div>
                        {assign lists $listModel->filter_by_category_id($category.id)}
                        <ol class="dd-list">
                            {foreach from=$lists->result() item=list}
                                <li class="dd-item" data-id="{$list->id}">
                                    <div class="dd-handle">{$list->name}</div>
                                    <div style="float: right; margin-right: 8px; margin-top: -31px">
                                        <a class="btn btn-danger btn-xs" href="{base_url()}admin/lists/destroy/{$list->id}" onclick="return confirm('You are sure?');">Delete</a>
                                    </div>
                                </li>
                            {/foreach}
                        </ol>
                    </li>
                {/foreach}
            </ol>
        </div>
        <input type="hidden" id="category_list_output" name="category_list_output" />
    </form>

    <script>
        $(document).ready(function(){
            var updateOutput = function(e)
            {
                var list   = e.length ? e : $(e.target),
                    output = list.data("output");
                if (window.JSON) {
                    output.val(window.JSON.stringify(list.nestable("serialize")));//, null, 2));
                } else {
                    output.val("JSON browser support required for this demo.");
                }
            };

            // activate Nestable for list 2
            $("#nestable2").nestable().on("change", updateOutput);

            // output initial serialised data
            updateOutput($("#nestable2").data("output", $("#category_list_output")));

            $("#nestable-menu").on("click", function(e)
            {
                var target = $(e.target),
                    action = target.data("action");
                if (action === "expand-all") {
                    $(".dd").nestable("expandAll");
                }
                if (action === "collapse-all") {
                    $(".dd").nestable("collapseAll");
                }
            });
        });
    </script>
{/block}