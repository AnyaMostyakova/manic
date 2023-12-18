<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/пилки.jpg" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2> Combined manicure is a combination of various techniques and procedures involving the treatment of nails and cuticles. It can include trimming, shaping, polishing and other nail care methods. Combined manicure allows you to customize the procedure according to the needs and preferences of each client.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>