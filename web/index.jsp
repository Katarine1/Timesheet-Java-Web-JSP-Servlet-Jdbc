<%@page import="model.entities.Week"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="service" class="model.services.WeekService"/>
<style type="text/css"> @import url("../css/style.css"); </style>
<style type="text/css"> @import url("../css/mobile-style.css"); </style>

<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/mobile-style.css">
        <script src="js/jquery.js"></script>
        <script src="js/links.js"></script>
        <title>Timesheet</title>
    </head>
    <body class="body"> 

        <!--Inport Header-->
        <c:import url="header.jsp"/>  

        <nav id="nav-tb1">

            <!--Menu-->
            <table id="tb11">
                <tr id="tr011">
                    <td class="td011"><a class="a011" id="home2" href="#home2">Home</a></td>
                    <td class="td011"><a class="a011" id="register" href="#register">Register</a></td>
                    <td class="td011"><a class="a011" id="update" href="#update">Update</a></td>
                </tr>
            </table>
        </nav>

        <section id="div-section"> 
            
            <article class="art" id="art-save">
                <!--Import Add-->
                <c:import url="add.jsp"/>
            </article>
            
            <article class="art" id="art-up">
                <!--Import Update--> 
                <c:import url="update.jsp"/>
            </article>  
            
        </section>       

        <section id="div-time-text">
            <h2>Times</h2>
        </section>

        <section id="section-table">
            
            <!--Table Time-->
            <table id="tb03-list">            
                <tr id="tr03-list">
                    <th class="th-list">Id</th>
                    <th class="th-list">Start Hour</th>               
                    <th class="th-list">End Hour</th>                
                    <th class="th-list">Sunday</th>                
                    <th class="th-list">Monday</th>                
                    <th class="th-list">Tuesday</th>                
                    <th class="th-list">Fourth</th>                
                    <th class="th-list">Fifth</th>                
                    <th class="th-list">Friday</th>                    
                    <th class="th-list">Saturday</th>
                    <th class="th-list">X</th>
                </tr>                

                <!--List data-->
                <c:forEach var="week" items="${service.findAll()}" varStatus="id">                
                    <tr>
                        <td class="td-list">${week.id}</td>                        
                        <td class="td-list">${week.hourstart}</td>
                        <td class="td-list">${week.hourend}</td>
                        <td class="td-list">${week.sunday}</td>
                        <td class="td-list">${week.monday}</td>
                        <td class="td-list">${week.tuesday}</td>
                        <td class="td-list">${week.fourth}</td>
                        <td class="td-list">${week.fifth}</td>
                        <td class="td-list">${week.friday}</td>
                        <td class="td-list">${week.saturday}</td>
                        <td id="td-list-a"><a class="a" id="a-remove" href="main?search=Remove&id=${week.id}">REMOVE</a></td>
                    </tr>
                </c:forEach>
            </table>
            
        </section> 

        <!--Import Footer-->
        <c:import url="footer.jsp"/>
    </body>
</html>