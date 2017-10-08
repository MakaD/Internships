package com.marinadamnjanovic.dao;

import com.marinadamnjanovic.model.AdModel;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("adDao")
public class AdDaoImpl extends AbstractDao<Integer, AdModel> implements AdDao{

    public AdModel findById(int id) {
        return getByKey(id);
    }

    public void saveAd(AdModel ad) {
        persist(ad);
    }

    public void deleteAdById(int id) {
        Query query = getSession().createSQLQuery("delete from ads where id = :id");
        query.setString("id", Integer.valueOf(id).toString());
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<AdModel> findAllAds() {
        Criteria criteria = createEntityCriteria();
        return (List<AdModel>) criteria.list();
    }

    @SuppressWarnings("unchecked")
    public List<AdModel> search(String param) {
        Criteria criteria = createEntityCriteria();
        List<AdModel> ads = (List<AdModel>) criteria.list();
        List<AdModel> filteredAds = new ArrayList<>();
        for (AdModel ad:ads) {
            if(ad.toString().toLowerCase().contains(param.toLowerCase())){
                filteredAds.add(ad);
            }
        }
        return filteredAds;
    }


}
