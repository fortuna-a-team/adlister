package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, img_path, price, item_condition, category, description, location) VALUES (?, ?, ?, ?,?,?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getImg_path());
            stmt.setDouble(4, ad.getPrice());
            stmt.setString(5, ad.getItem_condition());
            stmt.setString(6, ad.getCategory());
            stmt.setString(7, ad.getDescription());
            stmt.setString(8, ad.getLocation());

            System.out.println(stmt);
            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public Ad getAdById(long queryId) {
        try {
            String query = "SELECT * FROM ads WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, queryId);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return extractAd(rs);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        throw new IllegalArgumentException("Error: no ad exists by this ID.");
    }

    private Ad extractAd(ResultSet rs) throws SQLException { // extract ads from the mysql table
        // must call rs.next on new resultSet before using this
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("img_path"),
                rs.getInt("price"),
                rs.getString("item_condition"),
                rs.getString("category"),
                rs.getString("description"),
                rs.getString("location")

        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }


}
