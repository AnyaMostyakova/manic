<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:avtorizLayout title="Main">
    <div class="container" style="display: flex;align-items: center;justify-content: center;}">
        <div style="flex: 1;" class="photo">
            <img style="width: 700px;height: 550px" src="/manicure/images/ph7.jpg" alt="Фотография">
        </div>
        <div style="flex: 1; text-align: center"class="text">
            <h2>Hardware manicure uses special instrumental equipment for the treatment of nails and cuticles. This type of manicure is more delicate compared to traditional manicure using sharp tools. It helps to achieve a smoother nail surface and precise cuticle treatment.</h2>        </div>
    </div>
    <div id="record" class="buttonRecord">
        <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
    </div>
</t:avtorizLayout>