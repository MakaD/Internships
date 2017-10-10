package com.marinadamnjanovic.dao;

import com.marinadamnjanovic.model.AdModel;

import java.util.List;

public interface AdDao {

    AdModel findById(int id);
    void saveAd(AdModel ad);
    void deleteAdById(int id);
    List<AdModel> findAllAds();
    List<AdModel> search(String param);

}
