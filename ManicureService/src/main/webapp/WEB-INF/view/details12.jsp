<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph5.jpg" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2> Classic men's manicure: Classic men's manicure is a simple and effective type of care for men's nails. It includes cutting and shaping the nails, as well as removing the cuticle. This type of manicure helps to maintain the health of nails, creates a neat and well-groomed appearance.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>