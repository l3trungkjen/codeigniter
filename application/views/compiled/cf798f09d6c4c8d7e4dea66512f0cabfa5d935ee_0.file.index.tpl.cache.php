<?php /* Smarty version 3.1.24, created on 2015-06-10 10:33:02
         compiled from "/var/www/maytinhkimngan/application/views/helloworld/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:2473817265577afee6cb589_96219323%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cf798f09d6c4c8d7e4dea66512f0cabfa5d935ee' => 
    array (
      0 => '/var/www/maytinhkimngan/application/views/helloworld/index.tpl',
      1 => 1433906220,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2473817265577afee6cb589_96219323',
  'variables' => 
  array (
    'title' => 0,
    'description' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.24',
  'unifunc' => 'content_5577afee6d2163_20818986',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5577afee6d2163_20818986')) {
function content_5577afee6d2163_20818986 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '2473817265577afee6cb589_96219323';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Welcome to CodeIgniter</title>
    </head>
<body>
    <h1><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
    <p>description: <?php echo $_smarty_tpl->tpl_vars['description']->value;?>
</p>
</body>
</html><?php }
}
?>