<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:mainLayout title="Authentication">
    <div style="display: flex;
      align-items: center;
      margin: 150px 500px;
      flex-direction: column;border: 3px solid black;border-radius: 20px;" class="auten">
        <h1 style="font-size: 25px">Authentication</h1>

        <h2 style="color: red">${message}</h2>
    <form style="background-color: #ead7cb;color: #070706;font-size: 25px" action="/manicure/usercheck" method="post">
        <table style="display: flex;
            justify-content: center;
            align-items: center;">
            <tr>
                <td><label style="font-size: 25px">Username:</label></td>
                <td><input style="font-size: 25px" type="text" name="username" placeholder="enter your username"></td>
            </tr>
            <tr>
                <td><label style="font-size: 25px">Password:</label></td>
                <td><input style="font-size: 25px" type="password" name="password"></td>
            </tr>
        </table>
        <div><input style="padding: 5px 10px;background-color: #ead7cb;color: #070706;border: 2px solid black;cursor: pointer;border-radius: 20px;font-size: 25px;" type="submit" value="Login"></div>
    </form>

    <div>
        <a style="font-size: 25px;color: #070706" href="/manicure/regpage">Registration</a>
    </div>
</div>
</t:mainLayout>
