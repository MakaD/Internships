package com.marinadamnjanovic.service;

import com.marinadamnjanovic.model.AdModel;

import java.util.List;

public interface AdService {

    AdModel findById(int id);

    void saveAd(AdModel ad);

    void updateAd(AdModel ad);

    void deleteAdById(int id);

    List<AdModel> findAllAds();

    List<AdModel> search(String param);

}
