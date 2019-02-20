package daoimpl;

import config.DatabaseConnectivity;
import dao.MstCifDAO;
import entity.MstCif;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MstCifDAOImpl implements MstCifDAO {

    private static Connection conn;

    public MstCifDAOImpl() {
        conn = DatabaseConnectivity.getConnection();
    }

    @Override
    public boolean tambahMstCif(MstCif mstCif) {

        String INSERT = "INSERT INTO mst_cif (cifid,aoid,dtjoin,fullnm,npwp,countryid,flgrelated) VALUES(?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement state = null;

        try{
            state = conn.prepareStatement(INSERT);

            state.setString(1,mstCif.getCifid());
            state.setString(2,mstCif.getAoid());
            state.setString(3,mstCif.getDtjoin());
            state.setString(4,mstCif.getFullnm());
            state.setString(5,mstCif.getNpwp());
            state.setString(6,mstCif.getCountryid());
            state.setInt(7,mstCif.getFlgrelated());

            int qty = state.executeUpdate();
            return qty > 0;

        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public ArrayList<MstCif> getMstCif() {

        ArrayList<MstCif> arrayMst = null;

        String SELECT = "SELECT ms.fullnm,ms.cifid,ms.aoid,ms.dtjoin,mc.sex FROM mst_cif ms JOIN mst_cifpersnl mc on mc.cifid = ms.cifid";

        PreparedStatement state = null;

        try{
            state = conn.prepareStatement(SELECT);
            ResultSet rs = state.executeQuery();

            if(rs != null){
                arrayMst = new ArrayList<>();

                while (rs.next()){

                    MstCif mstCif = new MstCif();
                    mstCif.setFullnm(rs.getString(1));
                    mstCif.setCifid(rs.getString(2));
                    mstCif.setAoid(rs.getString(3));
                    mstCif.setDtjoin(rs.getString(4));
                    mstCif.setSex(rs.getInt(5));
                    arrayMst.add(mstCif);
                }

            }

        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }


        return arrayMst;
    }

    @Override
    public boolean deleteMstCif(MstCif mstCif) {

        String DELETE = "DELETE FROM mst_cif WHERE cifid = ?";

        PreparedStatement state = null;

        try {
            state = conn.prepareStatement(DELETE);
            state.setString(1, mstCif.getCifid());
            int qty = state.executeUpdate();
            return qty > 0;

        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }

        return false;
    }

}
