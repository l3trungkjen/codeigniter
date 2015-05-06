<?php /* Smarty version 3.1.24, created on 2015-06-10 10:15:30
         compiled from "/var/www/maytinhkimngan/application/views/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:12642271535577abd2728953_10623023%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1b7b3b95008f6db564a68170f910bc5b812dab52' => 
    array (
      0 => '/var/www/maytinhkimngan/application/views/templates/index.tpl',
      1 => 1433906113,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12642271535577abd2728953_10623023',
  'variables' => 
  array (
    'title' => 0,
    'description' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.24',
  'unifunc' => 'content_5577abd2733744_16233564',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5577abd2733744_16233564')) {
function content_5577abd2733744_16233564 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '12642271535577abd2728953_10623023';
?>
<p>index.tpl page shows the variables here:</p>
<p>title: <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</p>
<p>description: <?php echo $_smarty_tpl->tpl_vars['description']->value;?>
</p><?php }
}
?>