<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
	$(document).ready(
        function(){
            //add more file components if Add is clicked
            $('#addFile').click(function() {
            	var fileIndex = $('#fileTable tr').children().length;
            	console.log(fileIndex);
                $('#fileTable').append('<tr><td>' + '<input type="file" name="files[' + fileIndex + ']" />' + '</td></tr>');
            });

     });
</script>
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
 
        <form:form method="post" action="savefiles.html"
            modelAttribute="uploadForm" enctype="multipart/form-data">
 
            <p>Select files to upload. Press Add button to add more file
                inputs.</p>
 
            <table id="fileTable">
                <tr>
                    <td><input name="files[0]" type="file" /></td>
                </tr>
                <tr>
                    <td><input name="files[1]" type="file" /></td>
                </tr>
            </table>
            <br />
            <input type="submit" value="Upload" />
            <input id="addFile" type="button" value="Add File" />
        </form:form>
 
        <br />
    </div>
</body>
</html>