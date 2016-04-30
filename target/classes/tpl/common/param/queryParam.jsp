<%--
  Created by IntelliJ IDEA.
  User: zzp
  Date: 2016/4/10
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="container">
<div class="container">
<table class="table table-bordered table-hover table-responsive">
    <thead align="center">
        <td>序号</td>
        <td>参数英文名</td>
        <td>参数中文名</td>
        <td>参数是否有效</td>
        <td>操作</td>
    </thead>
    <tbody>
        <tr align="center">
            <td>1</td>
            <td>smsftp</td>
            <td>统一安保ftp</td>
            <td>是</td>
            <td>
                <button type="button" class="btn btn-default" aria-label="Left Align" data-toggle="modal" data-target="#detailModal">
                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                </button>
            </td>
        </tr>
        <tr align="center">
            <td>2</td>
            <td>gjjftp</td>
            <td>公积金ftp</td>
            <td>是</td>
            <td>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                </button>
            </td>
        </tr>
        <tr align="center">
            <td>3</td>
            <td>fingerServer</td>
            <td>指纹服务器地址</td>
            <td>是</td>
            <td>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                </button>
            </td>
        </tr>
        <tr align="center">
            <td>4</td>
            <td>sjServer</td>
            <td>加密机服务器地址</td>
            <td>是</td>
            <td>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                </button>
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                </button>
            </td>
        </tr>
    </tbody>
</table>
</div>


<div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">明细</h4>
            </div>

            <div class="modal-body">
                <table class="table table-bordered table-hover table-responsive">
                    <thead align="center"><tr>
                        <td>序号</td>
                        <td>参数key</td>
                        <td>参数value</td>
                        <td>操作</td></tr>
                    </thead>
                    <tbody>
                    <tr align="center">
                        <td>1</td>
                        <td>ip</td>
                        <td>127.0.0.1</td>
                        <td>
                            <button type="button" class="btn btn-default" aria-label="Left Align" data-toggle="modal" data-target="#detailModal" >
                                <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                            </button>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>2</td>
                        <td>port</td>
                        <td>2020</td>
                        <td>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                            </button>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>3</td>
                        <td>user</td>
                        <td>SMS</td>
                        <td>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                            </button>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>4</td>
                        <td>pwd</td>
                        <td>FTP</td>
                        <td>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>明细
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                            </button>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                            </button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
