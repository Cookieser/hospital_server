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
      <h1>办理入住</h1>
  </div>
 <div class="container-fluid">
  <div class="row-fluid">
    <div class="span7">

      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>天伦颐养欢迎您，祝您身体健康！</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="#" method="get" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">姓名 :</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="请输入姓名" maxlength="10"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">性别 :</label>
              <div class="controls">
                <select >
                  <option>男</option>
                  <option>女</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">主治医生编号 :</label>
              <div class="controls">
                <select >
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">办理入住时间 :</label>
              <div class="controls">
                <div  data-date="12-02-2012" class="input-append date datepicker">
                  <input type="text" value="12-02-2012"  data-date-format="mm-dd-yyyy" class="span11" >
                  <span class="add-on"><i class="icon-th"></i></span> </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">患者身份证 :</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="请输入身份证信息" maxlength="18"/>
              </div>
               </div>
            <div class="control-group">
              <label class="control-label">公寓楼号：</label>
              
              <div class="controls">
                <select >
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                </select></div>
              </div>
              <div class="control-group">
              <label class="control-label">楼宇区号：</label>
              <div class="controls">
                <select >
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                </select>
              </div>
              <div class="control-group">
              <label class="control-label">区域房间号：</label>
              <div class="controls">
                <select >
                  <option>01</option>
                  <option>02</option>
                  <option>03</option>
                  <option>04</option>
                  <option>05</option>
                  <option>06</option>
                  <option>07</option>
                  <option>08</option>
                  <option>09</option>
                </select>
              </div>
                 <div class="control-group">
              <label class="control-label">房间床位号：</label>
              <div class="controls">
                <select >
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                </select>
              </div>
                <div class="control-group">
              <label class="control-label">普通房间-1，特殊房间-2：</label>
              <div class="controls">
                <select >
                  <option>1</option>
                  <option>2</option>
                </select>
                </div>

                <div class="control-group">
                  <label class="control-label">电话 :</label>
                  <div class="controls">
                    <input type="text" class="span11" placeholder="请输入联系方式" oninput="value=value.replace(/[^\d]/g,'')" maxlength="11"/>
                  </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-primary">重置</button>
              <button type="submit" class="btn btn-success">保存</button>
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

