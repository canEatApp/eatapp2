<?php
/* Smarty version 3.1.30, created on 2017-07-16 04:59:31
  from "/Applications/MAMP/htdocs/eatapp2/template/index/addshop.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_596ad693d79280_64631693',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c417fd9f42278b4f0eee09a17937f5a74e5803c8' => 
    array (
      0 => '/Applications/MAMP/htdocs/eatapp2/template/index/addshop.html',
      1 => 1500173928,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_596ad693d79280_64631693 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加商店</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<?php echo @constant('CSS_PATH');?>
/mui.min.css">
    <?php echo '<script'; ?>
 src="<?php echo @constant('JS_PATH');?>
/jquery.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo @constant('JS_PATH');?>
/uploadimg.js"><?php echo '</script'; ?>
>
</head>
<body>
<header class="mui-bar mui-bar-nav">
    <a onclick="history.go(-1)" class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
    <h1 class="mui-title">添加商铺</h1>
</header>

<form method="post" action="index.php?m=index&f=backshop&a=addshop" class="mui-input-group" style="margin-top: 45px;">
    <div class="mui-input-row">
        <h1 class="mui-title">添加图片</h1>
    </div>
    <div class="mui-input-row">
        <div class="inpimgbox">
            <div class="inputbox"></div>
            <input type="hidden" name="simg" class="simg">
        </div>
    </div>
    <div class="mui-input-row">
        <label>商铺名称</label>
        <input name="sname" type="text" class="mui-input-clear" placeholder="确认后无法修改">
    </div>
    <div class="mui-input-row">
        <label>英文名称</label>
        <input name="sename" type="text" class="mui-input-clear" placeholder="确认后无法修改">
    </div>
    <div class="mui-input-row">
        <label>商铺地址</label>
        <input name="saddress" required type="text" class="mui-input-clear" placeholder="确认后无法修改">
    </div>
    <div class="mui-input-row">
        <label>中文简介</label>
        <input name="snotes" required type="text" class="mui-input-clear" placeholder="请输入内容">
    </div>
    <div class="mui-input-row">
        <label>英文简介</label>
        <input name="senotes" required type="text" class="mui-input-clear" placeholder="请输入内容">
    </div>
    <div class="mui-input-row">
    <label>满多少起送</label>
        <select name="srules" >
            <option value="15">¥15</option>
            <option value="25">¥25</option>
            <option value="35">¥35</option>
        </select>
    </div>
    <div class="mui-input-row">
        <label>满多少减</label>
        <select name="rid" id="">
            <?php if ($_smarty_tpl->tpl_vars['rules']->value) {?>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['rules']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['rid'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['rname'];?>
</option>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            <?php } else { ?>
            <option value="0">暂无优惠活动</option>
            <?php }?>
        </select>
    </div>
    <div class="mui-input-row">
        <label>商铺分类</label>
        <select name="lid">
            <?php if ($_smarty_tpl->tpl_vars['list']->value) {?>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['list']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['lid'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['lname'];?>
</option>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            <?php } else { ?>
            <option value="0"><?php echo $_smarty_tpl->tpl_vars['list']->value;?>
</option>
            <?php }?>
        </select>
    </div>
    <div  class="mui-input-row">
        <select name="" id="">
            <option value="">添加分类</option>
        </select>
        <input type="text" placeholder="分类名称">
    </div>
    <div class="mui-input-row" style="text-align: center">
        <button type="submit" value="修改" class="mui-btn mui-btn-primary" style="float: none; display: inline-block" >修改</button>
    </div>
</form>

</body>
<style>
    .inpimgbox{
        width:100%;
        height:100%;
        /*background-color: red;*/
    }
    .inputbox{
        width:80px;
        height:40px;
        float: right;

        position: relative;
    }
</style>
<?php echo '<script'; ?>
>
    $(function () {
        $("button").click(function () {
            var sname=$("input[name='sname']").val();
            var saddress=$("input[name='saddress']").val();
            var snotes=$("input[name='snotes']").val();
            var senotes=$("input[name='senotes']").val();
            var lid=$("input[name='lid']").val();
        });
        var obj=new upload_1();
        var inputBox=document.querySelector(".inputbox");
        obj.box=document.querySelector(".inpimgbox");
        obj.uploadBtnStyle={ width:50,height:30  };

        obj.createView("",inputBox);
        obj.success=function (url) {
            document.querySelector(".simg").value=url;
        }
    })

<?php echo '</script'; ?>
>
</html><?php }
}
