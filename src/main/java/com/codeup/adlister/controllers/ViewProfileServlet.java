package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }


        User user = (User)request.getSession().getAttribute("user"); // user object variable with session user attributes
        List<Ad> ads = DaoFactory.getAdsDao().getAdByUserId(user.getId()); // list of ads by session user's id
        request.setAttribute("userAds", ads); // list will be sent to page via userAds attribute

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}