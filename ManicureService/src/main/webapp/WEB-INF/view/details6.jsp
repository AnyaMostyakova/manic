<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph8.png" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2>Gel polish is a special type of manicure that provides long-term durability and shine. Gel polish is applied to natural nails and hardens under a UV lamp. It creates a beautiful and durable coating that can last up to several weeks without chipping or cracking.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>