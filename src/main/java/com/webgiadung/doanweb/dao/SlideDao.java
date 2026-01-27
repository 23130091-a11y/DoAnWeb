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
    public static Slide getById(int id) {
        return get().withHandle(h -> {
            return h.createQuery("SELECT * FROM slide WHERE id = :id AND status = 1")
                    .bind("id", id)
                    .mapToBean(Slide.class)
                    .findOne()
                    .orElse(null);
        });
    }

}
