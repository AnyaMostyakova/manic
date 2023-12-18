<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:mainLayout title="REGISTRATION">
    <div class="registr" style="display: flex;
      align-items: center;
      margin-top: 150px;
      flex-direction: column;">
        <h2 style="font-size: 20px">${message}</h2>
        <div id="error"></div>
        <form style="padding: 15px 30px;background-color: #ead7cb;color: #070706;border: 3px solid black;border-radius: 20px;font-size: 25px" action="/manicure/registration" method="post">
            <h1 style="font-size: 25px">User Registration</h1>
            <table>
                <tr>
                    <td><label style="font-size: 25px">Name<span style="color:red">*</span>:</label></td>
                    <td><input style="font-size: 25px" type="text" name="name" placeholder="your name" required ></td>
                </tr>
                <tr>
                    <td><label style="font-size: 25px">Phone:</label></td>
                    <td><input style="font-size: 25px" type="text" name="phone" placeholder="+71111111111" required pattern="(8|(\+7))[0-9]{10}" ></td>
                </tr>
                <tr>
                    <td><label style="font-size: 25px">Password:</label></td>
                    <td><input style="font-size: 25px" id="pwd" type="password" name="password" oninput="validatePassword(this)"></td>
                </tr>
                <tr>
                    <td><label style="font-size: 25px">Confirm Password:</label></td>
                    <td><input style="font-size: 25px" id="pwd1" type="password"></td>
                </tr>
            </table>
            <div><input style="padding: 5px 10px;background-color: #ead7cb;color: #070706;border: 2px solid black;cursor: pointer;border-radius: 20px;font-size: 25px;" type="submit" value="Register"></div>
        </form>
    </div>
</t:mainLayout>
