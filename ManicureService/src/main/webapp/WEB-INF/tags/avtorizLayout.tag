<%@tag description="Default Layout Tag" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="title"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>

    <link rel="stylesheet" href="<c:url value="/style/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/style/main.css"/>"/>

    <script src="<c:url value="/js/main.js"/>"></script>
</head>
<body style="background-color: #ead7cb;">
<div class="container">
    <jsp:doBody/>
</div>
</body>
</html>