package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {

    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    // return an ad object through passing in the ad id
    Ad getAdById(long id);

    // return list of ads that include searched term
    List<Ad> getBySearchTerm(String search);

    // remove ad by the ad id
    void deleteAdById (long id);

    // find all the ads by a specific user
    List<Ad> getAdByUserId(long user_id);

}
