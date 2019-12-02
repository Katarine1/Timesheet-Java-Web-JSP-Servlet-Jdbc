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
        <title>Update Time</title>
    </head>
    <body class="body">    
        
        <form action="update" method="Post">
            
            <!--Menu-->            
           <table id="tb1up">
                <tr id="tr01up">
                    <td class="td01"><a class="a01" id="home1" href="#home1">Home</a></td>
                    <td class="td01"><a class="a01" id="sunday1" href="#sunday1">Sunday</a></td>
                    <td class="td01"><a class="a01" id="monday1" href="#monday1">Monday</a></td>
                    <td class="td01"><a class="a01" id="tuesday1" href="#tuesday1">Tuesday</a></td>
                    <td class="td01"><a class="a01" id="fourth1" href="#fourth1">Fourth</a></td>
                    <td class="td01"><a class="a01" id="fifth1" href="#fifth1">Fifth</a></td>
                    <td class="td01"><a class="a01" id="friday1" href="#friday1">Friday</a></td>
                    <td class="td01"><a class="a01" id="saturday1" href="#saturday1">Saturday</a></td></tr>
            </table>
          
            <!--Inputs-->
            <section id="div-inputs-u"> 
                <input class="textIn" id="td1u" type="text" name="id" placeholder="Enter Id"/>
                <input class="textIn" id="td2u" type="text" name="hourstart" placeholder="Enter Start Hour" maxlength="5"/>
                <input class="textIn" id="td3u" type="text" name="hourend" placeholder="End 00:00" maxlength="5"/>
                <input class="textIn" id="td4u" type="text" name="sunday" placeholder="Enter Sunday Matter"/>
                <input class="textIn" id="td5u" type="text" name="monday" placeholder="Enter Monday Matter"/>
                <input class="textIn" id="td6u" type="text" name="tuesday" placeholder="Enter Tuesday Matter"/>
                <input class="textIn" id="td7u" type="text" name="fourth" placeholder="Enter Fourth Matter"/>
                <input class="textIn"  id="td8u" type="text" name="fifth" placeholder="Enter Fifth Matter"/>
                <input class="textIn" id="td9u" type="text" name="friday" placeholder="Enter Friday Matter"/>
                <input class="textIn"  id="td10u" type="text" name="saturday" placeholder="Enter Saturday Matter"/>
            </section>
            
            <!--Buttons-->
            <section id="div-inputs-btnsu">
                <input class="btn" id="btnUpdate" type="submit" value="UPDATE"/>
                <input class="btn" id="btnClean" type="reset" value="CLEAN"/>          
            </section>
        </form>
    </body>
</html>
