
<%@ page import="dao.MstCifpersnlDAO" %>
<%@ page import="daoimpl.MstCifpersnlDAOimpl" %>
<%@ page import="dao.MstCifDAO" %>
<%@ page import="daoimpl.MstCifDAOImpl" %>
<%@ page import="entity.MstCif" %>
<%@ page import="entity.MstCifpersnl" %>

<jsp:useBean id="u" class="entity.MstCif"></jsp:useBean>
<jsp:setProperty name="u" property="*"></jsp:setProperty>
<jsp:useBean id="uc" class="entity.MstCifpersnl"></jsp:useBean>
<jsp:setProperty name="uc" property="*"></jsp:setProperty>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    MstCif mstCif = new MstCif();
/*    mstCif.setCifid("JFDDE10");
    mstCif.setAoid("98787231");
    mstCif.setDtjoin("2019-02-27");
    mstCif.setCountryid("ID");
    mstCif.setFlgrelated(0);
    mstCif.setFullnm("Jaka Zulfiqri");
    mstCif.setNpwp("567345234");*/


    MstCifDAO mstCifDAO = new MstCifDAOImpl();
    mstCifDAO.tambahMstCif(u);


    MstCifpersnl mstCifpersnl = new MstCifpersnl();
    /*mstCifpersnl.setCifid("JFDDE10");
    mstCifpersnl.setAoid("llllllll");
    mstCifpersnl.setFullnm("Jacky Chan");
    mstCifpersnl.setSurenm("Jacky");
    mstCifpersnl.setMothrnm("Ananda Putri");
    mstCifpersnl.setNpwp("564465455465");
    mstCifpersnl.setBrtdt("2019-02-13");
    mstCifpersnl.setBrtplace("Bandung");
    mstCifpersnl.setTypeid("K");
    mstCifpersnl.setIdnbr("123123213");
    mstCifpersnl.setAddr("Jl. Margabaru no. 28");
    mstCifpersnl.setRt("004");
    mstCifpersnl.setRw("005");
    mstCifpersnl.setKelnm("Cijawura");
    mstCifpersnl.setPostalcode("40287");
    mstCifpersnl.setKecnm("Buah batu");
    mstCifpersnl.setCityid("K01");
    mstCifpersnl.setProvid("J1");
    mstCifpersnl.setCountryid("ID");
    mstCifpersnl.setExpdt("2019-02-24");
    mstCifpersnl.setSex(0);
    mstCifpersnl.setNohp("089611814114");
    mstCifpersnl.setAlias("Hardi");
    mstCifpersnl.setNote("Dapat Nilai 100");*/

    MstCifpersnlDAO mstCifpersnlDAO = new MstCifpersnlDAOimpl();
    mstCifpersnlDAO.tambahMstCifpersnl(uc);

    response.sendRedirect("index.jsp");

%>

