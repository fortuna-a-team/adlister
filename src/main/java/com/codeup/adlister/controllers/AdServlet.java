package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdServlet", urlPatterns = "/ads/ad")
public class AdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // Redirect to login page if not logged in
        // TODO: Change this later to be a modal with option to log in or register to view ad
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        } else {
            // Display the ad info given the ID
            long id = Long.parseLong(request.getParameter("id"));

//            request.setAttribute("ad_img", DaoFactory.getAdImagesDao().getImagesByAdId(id).get(0) );
            // (start here, get the image dao, get the image list, get the first image "indexed at 0")
//            System.out.println(DaoFactory.getAdImagesDao().getImagesByAdId(id).get(0));

            request.setAttribute("ad", DaoFactory.getAdsDao().getAdById(id));
            request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
        }
    }
}