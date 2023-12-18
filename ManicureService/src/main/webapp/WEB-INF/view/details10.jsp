<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/мужской.png" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2> Hardware men's manicure is a special type of manicure adapted for men's hands and nails. It includes nail treatment, cuticle removal and polishing. This helps to create a neat and well-groomed appearance of nails for men.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>