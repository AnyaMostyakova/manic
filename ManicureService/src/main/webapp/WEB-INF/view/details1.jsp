<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph3.jpg" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2>Japanese manicure is one of the most gentle and natural types of manicure. He uses various natural ingredients and techniques to improve the condition of the nails. During the procedure, the nail plate is polished and acquires a transparent shine. This allows you to improve the natural beauty of nails and maintain their health.</h2>
        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>