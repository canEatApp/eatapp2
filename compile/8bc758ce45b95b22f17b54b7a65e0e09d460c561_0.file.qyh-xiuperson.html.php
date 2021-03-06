<?php
/* Smarty version 3.1.30, created on 2017-07-16 03:00:44
  from "/Applications/MAMP/htdocs/eatapp2/template/index/qyh-xiuperson.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_596ababcb100d8_50310061',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8bc758ce45b95b22f17b54b7a65e0e09d460c561' => 
    array (
      0 => '/Applications/MAMP/htdocs/eatapp2/template/index/qyh-xiuperson.html',
      1 => 1500026430,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_596ababcb100d8_50310061 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人中心</title>
    <?php echo '<script'; ?>
 src="<?php echo JS_PATH;?>
/common.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo JS_PATH;?>
/jquery.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo JS_PATH;?>
/upload.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>
/common.css">
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>
/bootstrap.min.css">
</head>
<body>
<header>
    <a onclick="history.go(-1)"><img src="<?php echo IMG_PATH;?>
/qyh-img/q-back.png" alt=""></a>
</header>
<div>
    <div class="display">

    </div>
    <form class="form-horizontal" method="post" action="index.php?m=index&f=qperson&a=xiupersonCon">
        <div class="form-group">
            <label class="col-sm-2 control-label">昵称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="昵称" value="<?php echo $_smarty_tpl->tpl_vars['user']->value[0]['uiname'];?>
" name="name">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">电话</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="电话" value="<?php echo $_smarty_tpl->tpl_vars['user']->value[0]['utel'];?>
" name="tel">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">地址</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="地址" value="<?php echo $_smarty_tpl->tpl_vars['user']->value[0]['uaddress'];?>
" name="address">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">签名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="签名"  value="<?php echo $_smarty_tpl->tpl_vars['user']->value[0]['unotes'];?>
" name="notes">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">确认修改</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
<?php echo '<script'; ?>
>

    $('form').submit(function(){
        return false;
    })
    $(".btn-default").click(function(){
            let str=$("form").serialize();
        $.ajax({
            url:"index.php?m=index&f=qperson&a=xiupersonCon",
            type:"post",
            data:str,
            success:function(e){
//                console.log(e)
                if(e=="no"){
                    $(".display").html('修改失败').css("display","block");
                    setTimeout(function () {
                        $(".display").css("display","none");
                    },1500)

                }else if(e=="ok"){
                    $(".display").html('修改成功').css("display","block");
                    setTimeout(function () {
                        $(".display").css("display","none");
                    },1500)
//                    location.href="index.php?m=index&f=qperson&a=xiupersonCon";
                }
            }
        })
    })
<?php echo '</script'; ?>
>
<style>
    .display{
        width:200px;
        height:50px;
        position: absolute;
        top:240px;
        left:50%;
        margin-left:-100px;
        background: #00a2d4;
        border-radius: 10px;
        z-index: 100;
        text-align: center;
        line-height: 50px;
        color:#fff;
        display: none;
    }
    header{
        width:100%;
        height:1.87rem;
        background: #FC801E;
        background-size: cover;
    }
    header > a:first-child {
        display: inline-block;
        margin: 0rem 0.3rem 0;
        padding-top:0.3rem;
    }
    header > a:first-child img {
        height: 0.8rem;
        width:0.8rem;
        border: 1px solid #fff;
        border-radius:50% ;
        opacity: 0.8;
    }
    body > div{
        padding:0.2rem;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    form > div:last-child{
        text-align: right;
        position: fixed;
        top: 0.5rem;
        right:0;
        width:40%;
    }
</style><?php }
}
