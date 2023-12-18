<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:mainLayout title="HOME">
    <%@include file="/WEB-INF/view/parts/_nav.jsp"%>

    <div class="containerHome">
        <div class="item">
            <img class="homeImg" src="/manicure/images/ph1.png" alt="Image 1">
        </div>
        <div id="record" class="buttonRecord">
            <a href="/manicure/record"><button type="submit">Sign up for a manicure</button></a>
        </div>
        <p>Of course you can - a manicure salon, where beauty and nail care are our main goal!</p>
        <div id="womenServices" class="tableService">
            <table align="center">
                <tr>
                    <td id="japaneseManicure" >
                        <a href="/manicure/details?id=japaneseManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/1.png" alt="nail file">
                                <h4>Japanese Manicure</h4>
                                <h4>1200 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="europeanManicure">
                        <a href="/manicure/details?id=europeanManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ph6.png" alt="file">
                                <h4>European Manicure</h4>
                                <h4>1200 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="apparatManicure" >
                        <a href="/manicure/details?id=apparatManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/3.jpg" alt="file">
                                <h4>Apparatus Manicure</h4>
                                <h4>1500 RUB</h4>
                            </div>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td id="obrezManicure" >
                        <a href="/manicure/details?id=obrezManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/пилки.jpg" alt="file">
                                <h4>Cutting Manicure</h4>
                                <h4>1500 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="combManicure" >
                        <a href="/manicure/details?id=combManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ph1.jpg" alt="file">
                                <h4>Combined Manicure</h4>
                                <h4>1500 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="gelManicure" >
                        <a href="/manicure/details?id=gelManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ph3.jpg" alt="file">
                                <h4>Monochrome Gel Polish</h4>
                                <h4>2000 RUB</h4>
                            </div>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td id="SheeManicure" >
                        <a href="/manicure/details?id=SheeManicure">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ногтиШи.jpg" alt="file">
                                <h4>Monochrome Shee Lacquer</h4>
                                <h4>2000 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="GelManicureDesign" >
                        <a href="/manicure/details?id=GelManicureDesign">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/5.jpg" alt="file">
                                <h4>Monochrome Gel Polish + Design</h4>
                                <h4>2500 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="SheeManicureDesign" >
                        <a href="/manicure/details?id=SheeManicureDesign">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/7.jpg" alt="file">
                                <h4>Monochrome Shee Lacquer + Design</h4>
                                <h4>2500 RUB</h4>
                            </div>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
            <p>In our salon, we offer a wide range of services, starting from classic manicures and pedicures to nail designs and natural nail strengthening. Our experienced nail technicians use only high-quality materials and tools to ensure the perfect results for you.</p>
            <p><u>Services for Men:</u></p>
            <p>Clean and well-groomed nails speak of a man's success and professionalism.</p>
            <table id="menServices" align="center">
                <tr>
                    <td id="apparatManicureM" >
                        <a href="/manicure/details?id=apparatManicureM">
                            <div class="tableServices"><img class="ImgServices" src="/manicure/images/мужской.png" alt="file">
                                <h4>Apparatus Men's Manicure</h4>
                                <h4>1500 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="europManicureM" >
                        <a href="/manicure/details?id=europManicureM">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ph4.jpg" alt="file">
                                <h4>European Men's Manicure</h4>
                                <h4>2000 RUB</h4>
                            </div>
                        </a>
                    </td>
                    <td id="classicManicureM" >
                        <a href="/manicure/details?id=classicManicureM">
                            <div class="tableServices">
                                <img class="ImgServices" src="/manicure/images/ph5.jpg" alt="file">
                                <h4>Classic Men's Manicure</h4>
                                <h4>2000 RUB</h4>
                            </div>
                        </a>
                    </td>
                </tr>
            </table>
        <p style="margin-top: 20px; margin-bottom: 0px">Our works:</p>
        <table align="center">
            <tr>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph6.png" alt="пилки">  </div></td>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph8.png" alt="пилки">  </div></td>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph9.png" alt="пилки">  </div></td>
            </tr>
            <tr>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph10.png" alt="пилки"> </div></td>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph11.jpg" alt="пилки">  </div></td>
                <td><div class="tableServices"><img class="Img" src="/manicure/images/ph12.jpg" alt="пилки">  </div></td>
            </tr>
        </table>
        <p style="margin-top: 0px; padding-top: 0px; padding-bottom: 0px">See more examples of the work of our masters on social networks</p>
        <div id="contacts">
            <p style="margin-top: 0px; padding-top: 0px; padding-bottom: 0px">Our contacts:</p>
        <div class="Contacts">
            <a href="https://vk.com/mozhno.studio" target="_blank"><button class="buttonC"> <img class="buttonContacts" src="/manicure/images/ph13.png"> </button></a>
            <a href="https://api.whatsapp.com/send/?phone=%2B79872661166&text&type=phone_number&app_absent=0" target="_blank"><button class="buttonC"> <img class="buttonContacts" src="/manicure/images/ph14.png"> </button></a>
            <a href="https://t.me/mozhno_studio" target="_blank"><button class="buttonC"> <img class="buttonContacts" src="/manicure/images/ph15.png"> </button></a>
            <a href="https://www.instagram.com/mozhno.studio" target="_blank"><button class="buttonC"> <img class="buttonContacts" src="/manicure/images/ph16.png"> </button></a>
        </div>
        <div id="adress" class="contact-info">
            <p>Our adress:</p>
            <div style="position:relative;overflow:hidden;"><a href="https://yandex.ru/maps/org/konechno_mozhno/238978322526/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Of course you can!</a><a href="https://yandex.ru/maps/43/kazan/category/beauty_salon/184105814/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:14px;">Салон красоты в Казани</a><a href="https://yandex.ru/maps/43/kazan/category/cosmetology/892508964/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:28px;">Косметология в Казани</a><iframe src="https://yandex.ru/map-widget/v1/org/konechno_mozhno/238978322526/?ll=49.037374%2C55.786611&z=11.81" width="560" height="400" frameborder="1" allowfullscreen="true" style="position:relative;"></iframe></div>
            <p style="margin-top:0px; padding-top: 0px; padding-bottom: 0px">Come to our salon to relax, unwind and get an incredibly beautiful manicure. Let's create a masterpiece for your nails together!</p>
        </div>
        </div>
        </div>
</t:mainLayout>