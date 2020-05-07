package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    public Ad getAdById(long id) throws IllegalArgumentException {
        if (ads == null) {
            ads = generateAds();
        }

        for (Ad ad : ads) {
            if (id == ad.getId()) {
                return ad;
            }
        }

        throw new IllegalArgumentException("Error: No ad exists by this ID.");
    }


    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        return ads;
    }
}
