<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>c_view_personal_healthcare_records_by_blockchain</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style6 {font-size: 18px}
.style7 {font-family: "Times New Roman", Times, serif}
.style8 {font-size: 20px}
.style9 {color: #0000FF}
.style10 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style13 {color: #000000}
.style14 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style15 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="c_login.jsp"><span>HCC</span></a></li>
          <li class="active"><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Hospitals</span></a></li> 
		  <li><a href="i_login.jsp"><span>Intruder</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Protecting Personal Healthcare Record Using Blockchain and Federated Learning Technologies</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> View personal healthcare records by blockchain</h2>
		  <p>&nbsp;</p>

 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		   
           <%
					  
					  
					  try
					  {
					String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s17="",s111="";
	String decs3="",decs4="",decs5="",decs6="",decs7="",decs8="",decs9="",decs17="",hsign="";
	int i=0,j=1,k=0;
	//String keys = "";
	//String pname = request.getParameter("pat");
	
	String ss4="";
	

 	                    
							String query1="select distinct(dsig) from cloudlet_files "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() ) 
			                {
					
						    hsign = rs1.getString(1);
						   	String query="select * from cloudlet_files where dsig = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s8=rs.getString(8); // file name
							
							s111 = new String(Base64.decode(s8.getBytes()));
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 <table width="620" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
		 
        <pre> <h3 align="center">
<p align="center" class="style1"><span class="style1">Disease Name BlockChain--->::</span> <%=s111%><br>
			    <span class="style1">Disease Report Hash Code --->::</span><%=hsign%></p>
	     </h3> </pre>
			<div align="center">
			  <%
							
							}
								 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8); // file name
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s17=rs.getString(15);//
								
				String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.DECRYPT_MODE, key);
				
				 decs3 = new String(Base64.decode(s3.getBytes()));
				 decs4 = new String(Base64.decode(s4.getBytes()));
				 decs5 = new String(Base64.decode(s5.getBytes()));
				 decs6 = new String(Base64.decode(s6.getBytes()));
				 decs7 = new String(Base64.decode(s7.getBytes()));
				 decs8 = new String(Base64.decode(s8.getBytes()));
				 decs9 = new String(Base64.decode(s9.getBytes()));
				 decs17 = new String(Base64.decode(s17.getBytes()));
					
					
					%>
	      
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Image :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input  name="image" type="image" style="width:100px; height:90px;" src="d_p_Pic.jsp?id=<%=i%>" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=s2%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Contact Number :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs3%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">E-mail :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs4%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Address :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs5%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Pulses :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs6%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">ECG :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs7%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Symptoms :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs17%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Symptoms<br />File Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs8%></span></td>
      </tr>
	  
      <tr>
		<td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">File Content :- </span></div></td>
        <td bgcolor="#CCCC00"><span class="style13 style7 style8">
          <textarea name="p9" id="textarea" cols="52" rows="15" readonly="readonly"><%=decs9%></textarea>
        </span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Digital Sign (MAC) :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style10 style13"><%=s10%></span></td>
      </tr>
	  
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%> 





        <p>&nbsp;</p>
		<p align="right"><a href="c_main.jsp" class="style6">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>HC</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="c_main.jsp"> HC Main </a></li>
            <li><a href="c_login.jsp"> Log Out </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
