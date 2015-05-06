{extends '../../layouts/admin/index.tpl'}
{block name='content'}
    <form method="post" action="create" enctype="multipart/form-data">
        <h2>Create new Product</h2>
        {include 'admin/message.tpl'}
        <div class="form-group">
            <label>Name</label>
            <input type="hidden" value="{$product->id}">
            <input type="text_field" class="form-control" placeholder="Input name ..." name="name" value="{$product->name}" />
        </div>
        <div class="form-group">
            <label>Price</label>
            <input type="text_field" class="form-control" placeholder="Input price ..." name="price" value="{$product->price}" />
        </div>
        <div class="form-group">
            <label>Sale</label>
            <input type="text_field" class="form-control" placeholder="Input sale ..." name="sale" value="{$product->sale}" />
        </div>
        <div class="form-group">
            <label>Image</label>
            <input type="file" class="filestyle" id="image" name="image" data-icon="false" />
        </div>
        <div class="form-group">
            <img id="show_image" name="show_image" src="{base_url()}public/img/no-image.png" width="200" />
            <input type="hidden" id="hidden_image" name="hidden_image" value="{base_url()}{$product->image}"/>
            <input type="hidden" id="type_image" name="type_image" value=""/>
        </div>
        <div class="form-group">
            <label>Description</label>
            <textarea id="description" name="description">{$product->description}</textarea>
        </div>
        <div class="form-group">
            <label>Categories</label>
            <select class="form-control" name="list_id">
                {foreach from=$categories item=category}
                    {assign lists $listModel->filter_by_category_id($category.id)}
                    <optgroup label="{$category.name}">
                        {foreach from=$lists->result() item=list}
                            <option value="{$list->id}">{$list->name}</option>
                        {/foreach}
                    </optgroup>
                {/foreach}
            </select>
        </div>
        <input type="submit" class="btn btn-success" value="Create new">
    </form>
{/block}

{block name='javascript' append}
    {js('../public/ckeditor/ckeditor.js')}
    {js('../public/ckfinder/ckfinder.js')}
    {js('../public/js/load.init.js')}
{/block}
