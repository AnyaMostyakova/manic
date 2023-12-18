<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:mainLayout title="Record">
    <div style="display: flex;
      align-items: center;
      margin-top: 150px;
      flex-direction: column;">
        <h2 style="font-size: 20px">${message}</h2>
        <h1 style="font-size: 35px">Sign up for a manicure</h1>
        <form style="padding: 15px 30px;background-color: #ead7cb;color: #070706;border: 3px solid black;border-radius: 20px;font-size: 25px" action="/manicure/visit" method="post">
            <label style="font-size: 25px">Your name:</label>
            <input style="font-size: 25px" type="text" name="name" required><br><br>
            <label style="font-size: 25px">Phone number:</label>
            <input style="font-size: 25px" type="text" name="phonenumber" required><br><br>
            <label style="font-size: 25px">Service:</label>
            <select style="font-size: 20px;" id="service" name="service">
                <option style="font-size: 18px;"value="Japanese manicure">Japanese manicure</option>
                <option style="font-size: 18px;" value="European manicure">European manicure</option>
                <option style="font-size: 18px;" value="Hardware manicure">Hardware manicure</option>
                <option style="font-size: 18px;" value="Edged manicure">Edged manicure</option>
                <option style="font-size: 18px;"  value="Combined manicure">Combined manicure</option>
                <option style="font-size: 18px;" value="Monochrome gel polish manicure">Monochrome gel polish manicure</option>
                <option style="font-size: 18px;" value="Monochrome shea-varnish manicure">Monochrome shea-varnish manicure</option>
                <option style="font-size: 18px;" value="Plain gel polish+design">Plain gel polish+design</option>
                <option style="font-size: 18px;" value="Plain shea-varnish coating +design">Plain shea-varnish coating +design</option>
                <option style="font-size: 18px;" value="Hardware men's manicure">Hardware men's manicure</option>
                <option style="font-size: 18px;" value="European men's manicure">European men's manicure</option>
                <option style="font-size: 18px;" value="Classic men's manicure">Classic men's manicure</option>
            </select><br><br>
            <label style="font-size: 25px;">Date:</label>
            <input style="font-size: 25px" type="date" name="date" required><br><br>
            <div class="buttonRecord">
                <button type="submit">Sign up</button>
            </div>
        </form>
    </div>
</t:mainLayout>
