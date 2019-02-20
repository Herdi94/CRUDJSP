<%@ page import="dao.MstCifDAO" %>
<%@ page import="daoimpl.MstCifDAOImpl" %>
<jsp:useBean id="u" class="entity.MstCif"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%--
  Created by IntelliJ IDEA.
  User: Herdi
  Date: 20/02/2019
  Time: 14.09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    MstCifDAO mstCifDAO = new MstCifDAOImpl();
    mstCifDAO.deleteMstCif(u);
    response.sendRedirect("index.jsp");

%>
