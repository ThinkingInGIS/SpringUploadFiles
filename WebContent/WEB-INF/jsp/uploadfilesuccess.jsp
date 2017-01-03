<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>ThinkingInGIS - Upload Multiple Files Example</title>
<style type="text/css">
body {
    background-image:
        url(bg.png);
}
</style>
</head>
<body>
    <br>
    <br>
    <div align="center">
 
        <h1>ThinkingInGIS - Spring MVC Upload Multiple Files Example</h1>
        <p>Following files are uploaded successfully.</p>
        <ol>
            <c:forEach items="${files}" var="file">
           - ${file} <br>
            </c:forEach>
        </ol>
        <a href="http://localhost:8080/SpringUploadFiles/index.jsp"><input
            type="button" value="Go Back" /></a> <br/>
        <br />
        <br />
        <div
            style="font-family: verdana; line-height: 25px; padding: 5px 10px; border-radius: 10px; border: 1px dotted #A4A4A4; width: 50%; font-size: 12px;">
 
            Spring MVC Upload Multiple Files Example by <a
                href='https://github.com/ThinkingInGIS/'>ThinkingInGIS</a>. Click <a
                href='https://github.com/ThinkingInGIS/'>here</a>
           to get source code.<br>
        </div>
    </div>
</body>
</html>