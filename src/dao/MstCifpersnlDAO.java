package dao;

import entity.MstCifpersnl;

public interface MstCifpersnlDAO {
    boolean tambahMstCifpersnl (MstCifpersnl mstCifpersnl);

    MstCifpersnl getMstCifpersnl(String cifid);

    boolean UbahMstCifpersnl(MstCifpersnl mstCifpersnl);
}
