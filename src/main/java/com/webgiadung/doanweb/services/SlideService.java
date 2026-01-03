package com.webgiadung.doanweb.services;

import com.webgiadung.doanweb.dao.ProductDao;
import com.webgiadung.doanweb.dao.SlideDao;
import com.webgiadung.doanweb.model.Product;
import com.webgiadung.doanweb.model.Slide;

import java.util.List;

public class SlideService {
    SlideDao slideDao = new SlideDao();

    public List<Slide> getListSlide(){
        return SlideDao.getListSlide();
    }


}
