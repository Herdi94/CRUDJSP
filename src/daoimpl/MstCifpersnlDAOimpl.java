package daoimpl;

import config.DatabaseConnectivity;
import dao.MstCifpersnlDAO;
import entity.MstCifpersnl;

import java.awt.geom.RectangularShape;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MstCifpersnlDAOimpl implements MstCifpersnlDAO {

    private static Connection conn;

    public MstCifpersnlDAOimpl() {
        conn = DatabaseConnectivity.getConnection();
    }

    @Override
    public boolean tambahMstCifpersnl(MstCifpersnl mstCifpersnl) {

        String INSERT = "INSERT INTO mst_cifpersnl (cifid, aoid, fullnm, surenm, mothrnm, npwp, brtdt, brtplace, typeid, idnbr, addr, rt, rw, kelnm, postalcode, kecnm, cityid, provid, countryid, expdt, sex, nohp, alias, note) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement state = null;
        try {

            state = conn.prepareStatement(INSERT);
            state.setString(1, mstCifpersnl.getCifid());
            state.setString(2, mstCifpersnl.getAoid());
            state.setString(3, mstCifpersnl.getFullnm());
            state.setString(4, mstCifpersnl.getSurenm());
            state.setString(5, mstCifpersnl.getMothrnm());
            state.setString(6, mstCifpersnl.getNpwp());
            state.setString(7, mstCifpersnl.getBrtdt());
            state.setString(8, mstCifpersnl.getBrtplace());
            state.setString(9, mstCifpersnl.getTypeid());
            state.setString(10, mstCifpersnl.getIdnbr());
            state.setString(11, mstCifpersnl.getAddr());
            state.setString(12, mstCifpersnl.getRt());
            state.setString(13, mstCifpersnl.getRw());
            state.setString(14, mstCifpersnl.getKelnm());
            state.setString(15, mstCifpersnl.getPostalcode());
            state.setString(16, mstCifpersnl.getKecnm());
            state.setString(17, mstCifpersnl.getCityid());
            state.setString(18, mstCifpersnl.getProvid());
            state.setString(19, mstCifpersnl.getCountryid());
            state.setString(20, mstCifpersnl.getExpdt());
            state.setInt(21, mstCifpersnl.getSex());
            state.setString(22, mstCifpersnl.getNohp());
            state.setString(23, mstCifpersnl.getAlias());
            state.setString(24,mstCifpersnl.getNote());

            int qty = state.executeUpdate();
            return qty > 0;
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public MstCifpersnl getMstCifpersnl(String cifid) {
        MstCifpersnl mstCifpersnl = null;

        String SELECT = "SELECT * FROM mst_cif ms JOIN mst_cifpersnl mc on mc.cifid = ms.cifid WHERE mc.cifid = ?";
        PreparedStatement state = null;

        try {
            state = conn.prepareStatement(SELECT);
            state.setString(1,cifid);
            ResultSet rs = state.executeQuery();

            if(rs != null){

                mstCifpersnl = new MstCifpersnl();

                while (rs.next()){

                    mstCifpersnl.setCifid(rs.getString("mc.cifid"));
                    mstCifpersnl.setFlgrelated(rs.getInt("ms.flgrelated"));
                    mstCifpersnl.setDtjoin(rs.getString("ms.dtjoin"));
                    mstCifpersnl.setAoid(rs.getString("mc.aoid"));
                    mstCifpersnl.setFullnm(rs.getString("mc.fullnm"));
                    mstCifpersnl.setSurenm(rs.getString("mc.surenm"));
                    mstCifpersnl.setAlias(rs.getString("mc.alias"));
                    mstCifpersnl.setMothrnm(rs.getString("mc.mothrnm"));
                    mstCifpersnl.setSex(rs.getInt("mc.sex"));
                    mstCifpersnl.setBrtplace(rs.getString("mc.brtplace"));
                    mstCifpersnl.setBrtdt(rs.getString("mc.brtdt"));
                    mstCifpersnl.setTypeid(rs.getString("mc.typeid"));
                    mstCifpersnl.setIdnbr(rs.getString("mc.idnbr"));
                    mstCifpersnl.setAddr(rs.getString("mc.addr"));
                    mstCifpersnl.setRt(rs.getString("mc.rt"));
                    mstCifpersnl.setRw(rs.getString("mc.rw"));
                    mstCifpersnl.setKelnm(rs.getString("mc.kelnm"));
                    mstCifpersnl.setProvid(rs.getString("mc.provid"));
                    mstCifpersnl.setCountryid(rs.getString("mc.countryid"));
                    mstCifpersnl.setExpdt(rs.getString("mc.expdt"));
                    mstCifpersnl.setPostalcode(rs.getString("mc.postalcode"));
                    mstCifpersnl.setKecnm(rs.getString("mc.kecnm"));
                    mstCifpersnl.setCityid(rs.getString("mc.cityid"));
                    mstCifpersnl.setNpwp(rs.getString("mc.npwp"));
                    mstCifpersnl.setNohp(rs.getString("mc.nohp"));
                    mstCifpersnl.setNote(rs.getString("mc.note"));

                }
            }

        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }

        return mstCifpersnl;
    }

    @Override
    public boolean UbahMstCifpersnl(MstCifpersnl mstCifpersnl) {

        String UPDATE = "UPDATE mst_cifpersnl mc JOIN mst_cif ms ON mc.cifid = ms.cifid SET mc.aoid = ?, mc.fullnm = ?, mc.surenm = ?, mc.mothrnm = ?, mc.npwp = ?, mc.brtdt = ?, mc.brtplace = ?, mc.typeid = ?, mc.idnbr = ?, mc.addr = ?, mc.rt = ?, mc.rw = ?, mc.kelnm = ?, mc.postalcode = ?, mc.kecnm = ?, mc.cityid = ?, mc.provid = ?, mc.countryid = ?, mc.expdt = ?, mc.sex = ?, mc.nohp = ?, mc.alias = ?, mc.note = ?, ms.dtjoin = ?, ms.flgrelated = ?, ms.aoid = ?, ms.fullnm = ?, ms.npwp = ?, ms.countryid = ? WHERE mc.cifid = ?";
        PreparedStatement state = null;

        try {
            state = conn.prepareStatement(UPDATE);


            state.setString(1,mstCifpersnl.getAoid());
            state.setString(2,mstCifpersnl.getFullnm());
            state.setString(3,mstCifpersnl.getSurenm());
            state.setString(4,mstCifpersnl.getMothrnm());
            state.setString(5,mstCifpersnl.getNpwp());
            state.setString(6,mstCifpersnl.getBrtdt());
            state.setString(7,mstCifpersnl.getBrtplace());
            state.setString(8, mstCifpersnl.getTypeid());
            state.setString(9,mstCifpersnl.getIdnbr());
            state.setString(10,mstCifpersnl.getAddr());
            state.setString(11,mstCifpersnl.getRt());
            state.setString(12,mstCifpersnl.getRw());
            state.setString(13,mstCifpersnl.getKelnm());
            state.setString(14,mstCifpersnl.getPostalcode());
            state.setString(15,mstCifpersnl.getKecnm());
            state.setString(16,mstCifpersnl.getCityid());
            state.setString(17,mstCifpersnl.getProvid());
            state.setString(18,mstCifpersnl.getCountryid());
            state.setString(19,mstCifpersnl.getExpdt());
            state.setInt(20,mstCifpersnl.getSex());
            state.setString(21,mstCifpersnl.getNohp());
            state.setString(22,mstCifpersnl.getAlias());
            state.setString(23,mstCifpersnl.getNote());
            state.setString(24,mstCifpersnl.getDtjoin());
            state.setInt(25,mstCifpersnl.getFlgrelated());


            state.setString(26,mstCifpersnl.getAoid());
            state.setString(27,mstCifpersnl.getFullnm());
            state.setString(28,mstCifpersnl.getNpwp());
            state.setString(29,mstCifpersnl.getCountryid());

            state.setString(30,mstCifpersnl.getCifid());

            int qty = state.executeUpdate();
            return qty > 0;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }
}
