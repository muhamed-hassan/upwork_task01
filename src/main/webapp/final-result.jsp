<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <meta name="description" content="spreadsheet extractor">
        <meta name="author" content="mohamed hassan">

        <title>Result</title>

        <link href="resources/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">

            <div class="header">
                <div class="header-content">
                    Final Release
                </div>                
            </div>

            <div class="main-content">

                <form action="#">
                    <select name="zipCode" style="margin-left: 50px; margin-top: 50px; height: 50px;
                            text-align: center; vertical-align: central;">
                        <option value="-1">--Select ZipCode--</option>
                        <c:forEach items="${sessionScope.zipCodes}" var="zipCode" >                                                                
                            <option value="${zipCode}">${zipCode}</option>
                        </c:forEach>
                    </select>
                </form>

            </div>

            <div class="footer">
                <p>&COPY; All rights reserved www.ovium.com 2016</p>
            </div>

        </div>
    </body>
</html>
