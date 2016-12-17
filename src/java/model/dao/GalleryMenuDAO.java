package model.dao;

import java.util.ArrayList;
import java.util.List;
import model.bean.GalleryBean;

public class GalleryMenuDAO {
    public List<GalleryBean> getData(String query) {
        ArrayList<GalleryBean> asd = new ArrayList<GalleryBean>();
        GalleryBean a = new GalleryBean();
        for (int i = 0; i < 10; ++i) {
            a.setImgPath("http://localhost:8080/SnackImportIndonesia/images/g1.jpg");
            a.setTitle("Oreao" + i);
            asd.add(a);
        }
        a.setImgPath("http://localhost:8080/SnackImportIndonesia/images/g2.jpg");
        a.setTitle("Orioe");
        asd.add(a);
        return asd;
    }
}