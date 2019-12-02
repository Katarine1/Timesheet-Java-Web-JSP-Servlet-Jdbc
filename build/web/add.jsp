<%@page import="model.entities.Week"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="service" class="model.services.WeekService"/>
<style type="text/css"> @import url("../css/style.css"); </style>
<style type="text/css"> @import url("../css/mobile-style.css"); </style>

<!DOCTYPE html>
<html>
    <head>
        <title>Save Time</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/mobile-style.css">
        <script src="js/jquery.js"></script>
        <script src="js/links.js"></script>
    </head>
    <body class="body"> 
        
        <form id="form1" action="save" method="Post">
            
            <!--Menu-->
            <table id="tb1save">
                <tr id="tr01save">
                    <td class="td01"><a class="a01" id="home" href="#home">Home</a></td>
                    <td class="td01"><a class="a01" id="sunday" href="#sunday">Sunday</a></td>
                    <td class="td01"><a class="a01" id="monday" href="#monday">Monday</a></td>
                    <td class="td01"><a class="a01" id="tuesday" href="#tuesday">Tuesday</a></td>
                    <td class="td01"><a class="a01" id="fourth" href="#fourth">Fourth</a></td>
                    <td class="td01"><a class="a01" id="fifth" href="#fifth">Fifth</a></td>
                    <td class="td01"><a class="a01" id="friday" href="#friday">Friday</a></td>
                    <td class="td01"><a class="a01" id="saturday" href="#saturday">Saturday</a></td></tr>
            </table>
                        
            <!--Inputs-->
            <section id="div-inputs1"> 
                <input class="textIn" id="td2" type="text" name="hourstart" placeholder="Start 00:00" maxlength="5"/>
                <input class="textIn" id="td3" type="text" name="hourend" placeholder="End 00:00" maxlength="5"/>
                <input class="textIn" id="td4" type="text" name="sunday" placeholder="Enter Sunday Matter"/>
                <input class="textIn" id="td5" type="text" name="monday" placeholder="Enter Monday Matter"/>
                <input class="textIn" id="td6" type="text" name="tuesday" placeholder="Enter Tuesday Matter"/>
                <input class="textIn" id="td7" type="text" name="fourth" placeholder="Enter Fourth Matter"/>
                <input class="textIn"  id="td8" type="text" name="fifth" placeholder="Enter Fifth Matter"/>
                <input class="textIn" id="td9" type="text" name="friday" placeholder="Enter Friday Matter"/>
                <input class="textIn"  id="td10s" type="text" name="saturday" placeholder="Enter Saturday Matter"/>
            </section>
            
            <!--Buttons-->
            <section id="div-inputs-btns">
                <input class="btn" id="btnSave" type="submit" value="SAVE"/>
                <input class="btn" id="btnClean" type="reset" value="CLEAN"/>          
            </section>
        </form>
    </body>
</html>
