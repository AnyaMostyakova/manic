<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:mainLayout title="RecordConfirmation">
    <div style="display: flex;
      align-items: center;
      margin: 200px 350px;
      flex-direction: column;border: 3px solid black;border-radius: 20px;font-size: 25px">
        <h1 style="margin-top: 0px">Confirmation</h1>
            <h4>Your entry has been successfully added.The manager will clarify the time convenient for you later</h4>
            <div style="margin-bottom: 10px" id="record" class="buttonRecord">
                <a href="/manicure/home"><button type="submit">return to the Home</button></a>
            </div>
        </div>
</t:mainLayout>
