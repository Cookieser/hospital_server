<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorpicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/datepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-wysihtml5.css" />
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    <style>
        .control-group .controls label{
            display:inline-block;
        }
    </style>
</head>
<body>

<div id="content">
    <div id="content-header">
        <h1>用户注册</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span7">

                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>欢迎新医生注册</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/DServlet" method="get" class="form-horizontal" >
                            <input type="hidden" name="methodname" value="add">
                            <div class="control-group">
                                <label class="control-label">姓名 :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="请输入姓名" maxlength="10" name="name"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">性别 :</label>

                                <div class="controls">
                                    <select name="gender" >
                                        <option>男</option>
                                        <option>女</option>
                                    </select>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">科室</label>
                                    <div class="controls">
                                        <select name="department">
                                            <option>外科</option>
                                            <option>内科</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">已有工作年限：</label>
                                    <div class="controls">
                                        <input type="text" class="span11" placeholder="请输入已有工作年限" maxlength="3" name="worktime"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">年龄 :</label>
                                    <div class="controls">
                                        <input type="text" class="span11" placeholder="请输入年龄大小" maxlength="3" name="age" required="required"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">工号：</label>
                                    <div class="controls">
                                        <input type="text" class="span11" placeholder="请输入工号" maxlength="7" name="doctornum" required="required"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">账户：</label>
                                    <div class="controls">
                                        <input type="text" class="span11" placeholder="请输入账户" maxlength="20" name="account" required="required"/>

                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">密码 :</label>
                                        <div class="controls">
                                            <input type="password" class="span11" placeholder="请输入密码" maxlength="20" name="password" required="required"/>

                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">生日：</label>
                                            <div class="controls">
                                                <input type="text" class="span11" placeholder="请输入生日" maxlength="20" name="birthday"/>

                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">职务：</label>

                                                <div class="controls">
                                                    <select name="title" >
                                                        <option>医生</option>
                                                        <option>护工</option>
                                                    </select>
                                                </div>
                                                <div class="form-actions">
                                                    <center>
                                                        <button type="reset" class="btn btn-primary">重置</button>
                                                        <button type="submit" class="btn btn-success">保存</button>
                                                    </center>
                                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">

        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.toggle.buttons.html"></script>
<script src="${pageContext.request.contextPath}/js/masked.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.form_common.js"></script>
<script src="${pageContext.request.contextPath}/js/wysihtml5-0.3.0.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-wysihtml5.js"></script>
<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>
