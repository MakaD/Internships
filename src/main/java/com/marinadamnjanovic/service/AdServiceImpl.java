package com.marinadamnjanovic.service;

import com.marinadamnjanovic.dao.AdDao;
import com.marinadamnjanovic.model.AdModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("adService")
@Transactional
public class AdServiceImpl implements AdService{

    @Autowired
    private AdDao adDao;

    public AdModel findById(int id){
        return adDao.findById(id);
    }

    public void saveAd(AdModel ad){
        adDao.saveAd(ad);
    }

    public void updateAd(AdModel ad){
        AdModel entity = adDao.findById(ad.getId());
        if(entity!=null){
            entity.setTitle(ad.getTitle());
            entity.setDeadline(ad.getDeadline());
            entity.setDescription(ad.getDescription());
            entity.setCategory(ad.getCategory());
            entity.setCity(ad.getCity());
            entity.setCompany(ad.getCompany());
        }

        //adDao.saveAd(entity);
    }

    public void deleteAdById(int id){
        adDao.deleteAdById(id);
    }

    public List<AdModel> findAllAds(){
        return adDao.findAllAds();
    }

}
