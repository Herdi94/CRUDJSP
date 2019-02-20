<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="entity.MstCif" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.MstCifDAO" %>
<%@ page import="daoimpl.MstCifDAOImpl" %><%--
  Created by IntelliJ IDEA.
  User: Herdi
  Date: 16/02/2019
  Time: 21.07
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



    <form id="form-group" class="garis_tepi_luar" action="addMstCif.jsp" method="post">
        <!-- Pembukaan Nasabah (CIF) Perorangan -->
        <font color="#663399">Pembukaan Nasabah (CIF) Perorangan</font>
        <div class="garis_tepi_dalam">
            <div>
                <label>No CIF</label>
                <input type="text" name="cifid"> *

                <input type="checkbox" name="flgrelated" value="0">
                Terkait Bank

                <div class="box-right">
                    <div>
                        <label>Tgl Pembukaan</label> <input type="date" name="dtjoin"> *
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
                <input type="text" name="fullnm"> *
            </div>
            <div>
                <label>Nama Singkat</label>
                <input type="text" name="surenm"> *
            </div>
            <div>
                <label>Nama Alias</label>
                <input type="text" name="alias"><font color="red"
                                                       style="font-family: 'Times New Roman'; font-style: italic">
                Gunakan
                tanda koma (,) jika lebih dari 1 nama alias</font>
            </div>
            <div>
                <label>Nama Gadis Ibu Kandung</label>
                <input type="text" name="mothrnm"> *
            </div>
            <div>
                <label>Jenis Kelamin</label>
                <input type="radio" value="1" name="sex"> Laki-laki
                <input type="radio" value="0" name="sex"> Perempuan
            </div>
            <div>
                <label>Tempat & Tgl Lahir</label>
                <input type="text" name="brtplace">
                <input type="date" name="brtdt"> *
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
                        <input type="date" name="expdt"> *
                    </div>
                </div>
            </div>
            <div>
                <label>No Identitas</label>
                <input type="text" name="idnbr"> *
            </div>
            <div>
                <label>Alamat</label>
                <input type="text" name="addr" size="30px"> *
            </div>
            <div>
                <label>RT / RW</label>
                <input type="text" name="rt" size="2px" maxlength="3"> / <input type="text" name="rw" size="2px" maxlength="3"> *
                <div class="box-right">
                    <div>
                        <label>Kode Pos</label>
                        <input type="text" name="postalcode" size="10px"> *
                    </div>
                </div>
            </div>
            <div>
                <label>Kelurahan</label>
                <input type="text" name="kelnm"> *
                <div class="box-right">
                    <div>
                        <label>Kecamatan</label>
                        <input type="text" name="kecnm"> *
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
            <input type="text" name="npwp">
            <div class="box-right">
                <div>
                    <label>Keterangan</label>
                    <input type="text" name="note">
                </div>
            </div>
        </div>
        <div>
            <label>No HP</label>
            <input type="text" name="nohp">
        </div>
        </div>

        <!--start btn -->
        <div class="box-btn">
            <button type="submit">Simpan</button>
            <button disabled>Cetak</button>
            <button type="reset">Reset</button>
        </div>
        <!--end btn -->

    </form>

    </br>
    </br>

    <%
        MstCifDAO mstCifDAO = new MstCifDAOImpl();
        List<MstCif> listMstCif = mstCifDAO.getMstCif();
        request.setAttribute("listMstCif",listMstCif);

    %>

    <table border="1" width="90%">
        <tr>
            <th>No</th>
            <th>Nama Lengkap</th>
            <th>Nomor Cif</th>
            <th>Acc Officer</th>
            <th>Tgl Buka</th>
            <th>Jenis Kelamin</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:forEach items="${listMstCif}" var="u" varStatus="ua">


        <tr>
            <td>${ua.count}</td>
            <td>${u.fullnm}</td>
            <td>${u.cifid}</td>
            <td>${u.aoid}</td>
            <td>${u.dtjoin}</td>
            <td><c:choose>
                <c:when test="${u.sex==1}">
                    Laki-laki
                </c:when>
                <c:otherwise>
                    Perempuan
                </c:otherwise>
            </c:choose>
            </td>
            <td><a href="editMsfCifpersnl.jsp?cifid=${u.cifid}"><input type="button" value="Edit"></a></td>
            <td><a href="deleteMsfCif.jsp?cifid=${u.cifid}"><input type="button" value="Delete"></a></td>
        </tr>

        </c:forEach>

    </table>


</body>
</html>

