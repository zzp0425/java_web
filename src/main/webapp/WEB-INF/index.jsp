<%--
  Created by IntelliJ IDEA.
  User: zzp
  Date: 2016/4/6
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>zzp</title>
    <%
        String path = request.getContextPath();
    %>
    <!-- Bootstrap -->
    <link href="<%=path %>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/extend.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">联创</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">用户 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">权限</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">参数 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">查询</a></li>
                        <li><a href="#">新增</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">关于</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- 导航 -->
<div class="row">
    <div class="col-md-2">
        <div class="module">
        <ul class="nav nav-pills nav-stacked">
            <li text-align="center" class="active"><a href="##">首页</a></li>
            <li><a href="##">用户</a></li>
            <li><a href="##">参数</a></li>
            <li><a href="##">权限</a></li>
            <li class="disabled"><a href="##">备选</a></li>
        </ul>
        </div>
    </div>
    <div class="col-md-10">
        <sitemesh:write property='body' />
    </div>
</div>

<script src="<%=path %>/bootstrap/js/jquery.min.js"></script>
<script src="<%=path %>/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/js/seajs/sea.js"></script>
<script>
    // seajs 的简单配置
    seajs.config({
        base : '/js/seajs'
    });

    // 加载入口模块
    seajs.use(location.pathname +　"/../controller", function(ctr) {
        ctr.init("a");
    });
</script>
<hr>
<div class="row footer-bottom">
    <ul class="list-inline text-center">
        <li>版权所有&copy;zzp</li>
        <li>2016-04-10 Version:1.0.0</li>
    </ul>
</div>
</body>
</html>
