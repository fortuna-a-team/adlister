package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet("/notifications/*")
@WebServlet(name = "controllers.IndexServlet", urlPatterns = "/")
public class IndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Check if user is signed in. If not, do not display individual ad clicked -  we will prompt them to login or register.

        if ((request.getParameter("button") != null) && (request.getSession().getAttribute("user") == null)){
            response.sendRedirect("/login");
            return;
        }

//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }

//       !!! NOTE: If you need to direct a user to another page based on session attributes (e.g. logged        in, etc.) do this BEFORE any other logic on the page! OR IT WON'T WORK. !!!

        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
