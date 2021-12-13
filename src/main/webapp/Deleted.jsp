<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://ec2-52-200-188-218.compute-1.amazonaws.com/d3jemlqbkk5rp7","zomhirdpppefzg","18114bebdc0817c3a0023e9336205a1662e9d7214f26dcf5f28d6f5aef128802?sslmode=require");
    Statement st = conn.createStatement();
    st.executeUpdate("delete from product where prodID = '"+id+"'");
    //st.executeUpdate(dlteQuery);
    out.println("Deleted!!");
    response.sendRedirect("delete.jsp");
%>