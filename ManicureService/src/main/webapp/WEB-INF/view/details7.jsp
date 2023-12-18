<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph12.jpg" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2>Shea Polish is a hybrid manicure that has the advantages of both gel and regular nail polish. It provides durability and shine to the gel, but is applied and removed like regular nail polish. Shea Polish also allows you to choose from a variety of colors and shades to create a unique nail design.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>