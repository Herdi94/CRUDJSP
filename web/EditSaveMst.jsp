<%@ page import="dao.MstCifpersnlDAO" %>
<%@ page import="daoimpl.MstCifpersnlDAOimpl" %><%--
  Created by IntelliJ IDEA.
  User: Herdi
  Date: 22/02/2019
  Time: 08.00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="u" class="entity.MstCifpersnl"></jsp:useBean>
<jsp:setProperty name="u" property="*"></jsp:setProperty>

<%
    MstCifpersnlDAO mstCifpersnlDAO = new MstCifpersnlDAOimpl();
    mstCifpersnlDAO.UbahMstCifpersnl(u);

    response.sendRedirect("index.jsp");

%>
