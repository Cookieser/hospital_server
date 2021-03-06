<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>后台管理模板</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <!--Header-part-->
    <div id="header">
      <h1><a href="${pageContext.request.contextPath}/dashboard.jsp">信息管理系统平台</a></h1>
    </div>
    <!--close-Header-part--> 

    <!--top-Header-menu-->
    <div id="user-nav" class="navbar navbar-inverse">
        <ul class="nav">
            <li  class="dropdown" id="profile-messages" >
                <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                    <i class="icon icon-user"></i>&nbsp;
                    <span class="text">
                        <script type="text/javascript">
                          let data = localStorage.getItem("username")
                          document.write("欢迎你,"+data)
                          </script>
                        </span>&nbsp;
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="icon-user"></i> 个人资料</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
                    <li class="divider"></li>
                    
                </ul>
            </li>

            
            <li class=""><a title="" href="${pageContext.request.contextPath}/login.jsp"><i class="icon icon-share-alt"></i> <span class="text">&nbsp;退出系统</span></a></li>
        </ul>
    </div>
    <!--close-top-Header-menu-->

    <!--start-top-serch-->

    <!--close-top-serch-->

    <!--sidebar-menu-->
    <div id="sidebar" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
        <ul>
            <li class="submenu active">
                <a class="menu_a" link="${pageContext.request.contextPath}/index2.jsp"><i class="icon icon-home"></i> <span>控制面板</span></a>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="icon icon-user"></i> 
                    <span>用户管理</span> 
              
                </a>
                <ul>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/addpatient.jsp"><i class="icon icon-caret-right"></i>添加用户</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/addaccommodation.jsp"><i class="icon icon-caret-right"></i>办理入住</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/PServlet"><i class="icon icon-caret-right"></i>查询患者信息</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/getaccommodation.jsp"><i class="icon icon-caret-right"></i>查询患者入住信息</a></li>
                </ul>
            </li>
            <li class="submenu">
				<a href="#">
                    <i class="icon icon-tasks"></i> 
                    <span>评估管理</span> 

                </a>
				<ul> 			
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/getquestion.jsp"><i class="icon icon-caret-right"></i>模板管理</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/answerbase.jsp"><i class="icon icon-caret-right"></i>答案收集</a></li>
                </ul>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="icon icon-bell"></i> 
                    <span>房间管理</span> 
                  
                </a>
                <ul>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/getbed.jsp"><i class="icon icon-caret-right"></i>床位查询</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/addbed.jsp"><i class="icon icon-caret-right"></i>床位添加</a></li>
   
                </ul>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="icon icon-pinterest"></i> 
                    <span>员工管理</span> 
                
                </a>
                <ul>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/DServlet"><i class="icon icon-caret-right"></i>查询用户</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/adddoctor.jsp"><i class="icon icon-caret-right"></i>添加用户</a></li>
                
                </ul>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="icon icon-star"></i> 
                    <span>稀有设备管理</span> 
             
                </a>
                <ul>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/rareUseservlet"><i class="icon icon-caret-right"></i>设备使用记录</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/addrareuse.jsp"><i class="icon icon-caret-right"></i>设备使用注册</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/rareManageservlet"><i class="icon icon-caret-right"></i>设备管理</a></li>
                    <li><a class="menu_a" link="${pageContext.request.contextPath}/addraremanage.jsp"><i class="icon icon-caret-right"></i>添加设备</a></li>
                </ul>
            </li>


        </ul>
    </div>
    <!--sidebar-menu-->

    <!--main-container-part-->
    <div id="content">
        <!--breadcrumbs-->
        <div id="content-header">
          <div id="breadcrumb"> <a href="${pageContext.request.contextPath}/index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
        </div>
        <!--End-breadcrumbs-->
        <iframe src="${pageContext.request.contextPath}/index2.jsp" id="iframe-main" frameborder='0' style="width:100%;"></iframe>
    </div>
    <!--end-main-container-part-->

    <script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/nicescroll/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/matrix.js"></script>


    <script type="text/javascript">

    //初始化相关元素高度
    function init(){
        $("body").height($(window).height()-80);
        $("#iframe-main").height($(window).height()-90);
        $("#sidebar").height($(window).height()-50);
    }

    $(function(){
        init();
        $(window).resize(function(){
            init();
        });
    });

    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage (newURL) {
        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {
            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-" ) {
                resetMenu();            
            } 
            // else, send page to designated URL            
            else {  
                document.location.href = newURL;
            }
        }
    }

    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }

    // uniform使用示例：
    // $.uniform.update($(this).attr("checked", true));
    </script>
</body>
</html>
