<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Matrix Admin</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uniform.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style2.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
  <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<div id="content">
  <div id="content-header" class="widget-title">
    <h1>稀有设备使用</h1>
    <script type="text/javascript">
      function delworkById(wid){
        if(window.confirm("确认删除编号为" + wid +"的记录吗?")){
          window.location.href = '${pageContext.request.contextPath}/rareUseservlet?methodname=delete&workid='+wid;
        }
      }
    </script>
    <form id="form" action="${pageContext.request.contextPath}/rareUseservlet">
      <input type="hidden" name="methodname" value="update">
  </div>
  <div class="widget-box">
    <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
      <h5>数据表</h5>
    </div>
    <div class="widget-content nopadding">
      <table class="table table-bordered data-table">
        <thead>
        <tr>
          <th>编号</th>
          <th>开始使用时间</th>
          <th>结束使用时间</th>
          <th>使用人编号</th>
          <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
          <c:when test="${empty worksdata}">
            <tr>
              <td colspan="5">查无数据！</td>
            </tr>
          </c:when>
          <c:otherwise>
            <c:forEach items="${worksdata}" var="work">
              <tr>
                <td>${work.ID}</td>
                <td>${work.startTime}</td>
                <td>${work.endTime}</td>
                <td>${work.userID}</td>
                <td><a href='${pageContext.request.contextPath}/rareUseservlet?methodname=updateinput&wid=${work.ID}'>修改</a>|
                  <a href="javaScript:delworkById('${work.ID}')">删除</a></td>
              </tr>
            </c:forEach>
          </c:otherwise>
        </c:choose>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>
</div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.tables.js"></script>
</body>
</html>
