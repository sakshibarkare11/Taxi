<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	hello how are you
	<div id="google_element"></div>
	<script
		src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
	<script>
    function loadGoogleTranslate(){
    	new google.translate.TranslateElement("google_element");
    }
    </script>
</body>
</html>