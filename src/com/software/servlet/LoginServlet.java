package com.software.servlet;

import com.software.dao.DoctorDao;
import com.software.entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/loginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.获取用户名
        String uname = request.getParameter("username");
        //2.获取密码
        String pwd = request.getParameter("password");
        String password=String.valueOf(pwd.hashCode());

//        System.out.println(uname);
//        System.out.println(pwd);
        //3.验证登陆用户的合法性
        Doctor doctor=new Doctor();
        DoctorDao doctorDao=new DoctorDao();
        doctor=doctorDao.validateLogin(uname);
        //3.验证登陆用户的合法性
        if(doctor != null && password.equals(doctor.getPassWord())){
            //合法用户.跳转到成功页面

            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }else{
            //非法用户，跳转到登陆页面
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }
    }
}


