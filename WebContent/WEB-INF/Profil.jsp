<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profil</title>
    <link rel="stylesheet" href="css/styles.css">

<jsp:include page="header.jsp">
		<jsp:param value="${session.status}" name="isLoggedIn"/>
</jsp:include>
</head>
<body class="container-profil">
TEST TEST TEST
<h1>Profil TEST</h1>
<div class="account-box">

<p> Pseudo : ${pseudo}</p><br>
<p> Nom : ${nom} </p><br> 
<p>prenom : ${prenom} </p><br> 
<p>Email : ${email} </p><br>
<p>Telephone : ${telephone}</p><br> 
<p>Rue : ${rue} </p><br>
<p>Code Postal : ${cpo} </p><br>
<p>Ville : ${ville} </p><br> 

</div>





</body>


<%@ include file="footer.html"%>
</html>