package com.webgiadung.doanweb.dao;

import com.webgiadung.doanweb.model.Slide;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class SlideDao extends BaseDao{
    public static List<Slide> getListSlide(){
        Jdbi jdbi= get();

        List<Slide> slides=
                jdbi.withHandle(h->{
                    return h.createQuery("select * from slide where status = 1").mapToBean(Slide.class).list();
                });

        return slides;
    }


}
