<?php
/*%%SmartyHeaderCode:7931890175577bda2179920_52942470%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '15969741cfd96810ed1c847cde25964e50daf4c7' => 
    array (
      0 => '/var/www/maytinhkimngan/application/views/admin/categories/add.tpl',
      1 => 1433908816,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7931890175577bda2179920_52942470',
  'tpl_function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => '3.1.24',
  'unifunc' => 'content_5577bda21899d7_47684604',
  'cache_lifetime' => 120,
),true);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5577bda21899d7_47684604')) {
function content_5577bda21899d7_47684604 ($_smarty_tpl) {
?>
<form method="post" action="create">
    <h2>Create new Categories</h2>
    <div class="form-group">
        <label>Tên</label>
        <input type="text_field" class="form-control" placeholder="Nhập tên ..." name="name" />
    </div>
    <fieldset>
        <legend>Lists</legend>
        <div class="form-group">
            <input type="text_field" class="form-control", placeholder="Nhập tên ..." name="category_list_name[]" />
            <a class="btn btn-danger remove_fields" href="javascript:void(0)">Remove</a>
        </div>
    </fieldset>
    <div class="form-group">
        <a href="javascript:void(0)" class="btn btn-success" id="add_list">+</a>
    </div>
    <input type="submit" class="btn btn-success" value="Add new">
</form>
<script type="text/javascript">
    $(document).ready(function(){
        $.fn.categories.init();
    });
</script><?php }
}
?>