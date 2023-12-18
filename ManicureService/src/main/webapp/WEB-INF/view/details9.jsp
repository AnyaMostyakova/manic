<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph6.png" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2> Shea-lacquer with a design offers a combination of stability and variability. You can choose from a variety of shades and create a design using various techniques such as marble effects, gradients, stamping and others. This allows you to emphasize the uniqueness of your style and create a unique nail design.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>