package dao;

import entity.MstCif;
import entity.MstCifpersnl;

import java.util.ArrayList;

public interface MstCifDAO {

    boolean tambahMstCif(MstCif mstCif);

    ArrayList<MstCif> getMstCif();

    boolean deleteMstCif(MstCif mstCif);

}
