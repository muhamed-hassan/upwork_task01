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

        <link href="resources/css/style.css" rel="stylesheet" />
        <script type="text/javascript" src="resources/js/validation.js"></script>

        <title>Home</title>
    </head>
    <body>

        <div class="container">

            <div class="header">
                <div class="header-content">
                    Final release
                </div>                
            </div>

            <div class="main-content">

                <form action="extract" method="POST" enctype="multipart/form-data"
                      onsubmit="return validate(this)" style="padding-top: 50px; padding-left: 50px;">
                    <table>
                        <tr>
                            <td>
                                <input type="file" name="fileContent" id="fileContent" />
                            </td>
                            <td>
                                <input type="submit" value="Upload" class="button white" style="margin-left: -30px;"/>            
                            </td>
                        </tr>
                    </table>
                </form>						
            </div>

            <div class="footer">
                <p>&COPY; All rights reserved www.xxx.com 2016</p>
            </div>

        </div>

    </body>
</html>
