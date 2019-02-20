<%@ page import="entity.MstCif" %>
<%@ page import="dao.MstCifDAO" %>
<%@ page import="daoimpl.MstCifDAOImpl" %>
<%@ page import="entity.MstCifpersnl" %>
<%@ page import="dao.MstCifpersnlDAO" %>
<%@ page import="daoimpl.MstCifpersnlDAOimpl" %><%--
  Created by IntelliJ IDEA.
  User: Herdi
  Date: 20/02/2019
  Time: 14.46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pembukaan Nasabah</title>
    <style>

        .garis_tepi_luar {
            border: 2px solid #6d9db0;
            width: 90%;
        }

        .garis_tepi_dalam {
            border: 2px solid #d7e5eb;
            width: 80%;
        }

        .box-right {
            float: right;
            width: 40%;
        }

        .box-btn{
            float: left;
        }

        form label{
            float: left;
            width: 170px;
        }

        select{
            width: 173px;
        }

    </style>
</head>
<body>

<%
    String cifid =request.getParameter("cifid");
    MstCifpersnlDAO mstCifpersnlDAO = new MstCifpersnlDAOimpl();
    MstCifpersnl u = mstCifpersnlDAO.getMstCifpersnl(cifid);
%>


<form id="form-group" class="garis_tepi_luar" action="#" method="post">
    <!-- Pembukaan Nasabah (CIF) Perorangan -->
    <font color="#663399">Pembukaan Nasabah (CIF) Perorangan</font>
    <div class="garis_tepi_dalam">
        <div>
            <label>No CIF</label>
            <input type="text" name="cifid" value="<%=u.getCifid()%>"> *

            <input type="checkbox" name="flgrelated">
            Terkait Bank

            <div class="box-right">
                <div>
                    <label>Tgl Pembukaan</label> <input type="date" name="dtjoin" value="<%=u.getDtjoin()%>"> *
                </div>
            </div>
        </div>

        <div>
            <label>Cabang</label>
            <select name="cabang">
                <option selected disabled value="001 - CABANG UTAMA">001 - CABANG UTAMA</option>
            </select>
        </div>
        <div>
            <label>Account Officer</label>
            <select name="aoid">
                <option value="#">-- Pilih Account Officer --</option>
                <option value="98787231">98787231</option>
            </select> *
        </div>
        <div>
            <label>Nama Lengkap</label>
            <input type="text" name="fullnm" value="<%=u.getFullnm()%>"> *
        </div>
        <div>
            <label>Nama Singkat</label>
            <input type="text" name="surenm" value="<%=u.getSurenm()%>"> *
        </div>
        <div>
            <label>Nama Alias</label>
            <input type="text" name="alias" value="<%=u.getAlias()%>"><font color="red"
                                                  style="font-family: 'Times New Roman'; font-style: italic">
            Gunakan
            tanda koma (,) jika lebih dari 1 nama alias</font>
        </div>
        <div>
            <label>Nama Gadis Ibu Kandung</label>
            <input type="text" name="mothrnm" value="<%=u.getMothrnm()%>"> *
        </div>
        <div>
            <label>Jenis Kelamin</label>
            <input type="radio" name="sex" value="1"> Laki-laki
            <input type="radio" value="0" name="sex"> Perempuan
        </div>
        <div>
            <label>Tempat & Tgl Lahir</label>
            <input type="text" name="brtplace" value="<%=u.getBrtplace()%>">
            <input type="date" name="brtdt" value="<%=u.getBrtdt()%>"> *
        </div>
    </div>
    <!--end pembukaan nasabah -->

    <!--Info Identitas -->
    <font color="#663399">Info Identitas</font>
    <div class="garis_tepi_dalam">
        <div>
            <label>Jenis Identitas</label>
            <select name="typeid">
                <option value="K">1 - KTP</option>
                <option value="S">2 - SIM</option>
                <option value="P">3 - PASSPORT</option>
            </select> *
            <div class="box-right">
                <div>
                    <label>Masa Berlaku</label>
                    <input type="date" name="expdt" value="<%=u.getExpdt()%>"> *
                </div>
            </div>
        </div>
        <div>
            <label>No Identitas</label>
            <input type="text" name="idnbr" value="<%=u.getIdnbr()%>"> *
        </div>
        <div>
            <label>Alamat</label>
            <input type="text" name="addr" size="30px" value="<%=u.getAddr()%>"> *
        </div>
        <div>
            <label>RT / RW</label>
            <input type="text" name="rt" size="2px" maxlength="3" value="<%=u.getRt()%>"> / <input type="text" name="rw" size="2px" maxlength="3" value="<%=u.getRw()%>"> *
            <div class="box-right">
                <div>
                    <label>Kode Pos</label>
                    <input type="text" name="postalcode" size="10px" value="<%=u.getPostalcode()%>"> *
                </div>
            </div>
        </div>
        <div>
            <label>Kelurahan</label>
            <input type="text" name="kelnm" value="<%=u.getKelnm()%>"> *
            <div class="box-right">
                <div>
                    <label>Kecamatan</label>
                    <input type="text" name="kecnm" value="<%=u.getKecnm()%>"> *
                </div>
            </div>
        </div>
        <div>
            <label>Propinsi</label>
            <select name="provid">
                <option value="#">-- Pilih Provinsi --</option>
                <option value="J1">Jawa Barat</option>
                <option value="J2">Jawa Tengah</option>
                <option value="J3">Jawa Timur</option>
            </select> *
            <div class="box-right">
                <div>
                    <label>Kabupaten/Kota</label>
                    <select name="cityid">
                        <option value="#">-- Pilih Kabupaten/Kota --</option>
                        <option value="K01">Kabupaten</option>
                        <option value="K02">Kota</option>
                    </select> *
                </div>
            </div>
        </div>
        <div>
            <label>Negara</label>
            <select name="countryid">
                <option value="ID">ID - INDONESIA</option>
                *
            </select>
        </div>
    </div>
    <!--end info identitas -->

    <div class="garis_tepi_dalam">
        <div>
            <label>No NPWP</label>
            <input type="text" name="npwp" value="<%=u.getNpwp()%>">
            <div class="box-right">
                <div>
                    <label>Keterangan</label>
                    <input type="text" name="note" value="<%=u.getNote()%>">
                </div>
            </div>
        </div>
        <div>
            <label>No HP</label>
            <input type="text" name="nohp" value="<%=u.getNohp()%>">
        </div>
    </div>

    <!--start btn -->
    <div class="box-btn">
        <button type="submit">Simpan</button>
        <button type="reset">Reset</button>
    </div>
    <!--end btn -->

</form>
</body>
</html>
