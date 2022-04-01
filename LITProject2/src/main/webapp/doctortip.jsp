<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
    <!DOCTYPE HTML>

    <html>

    <head>
        <title>DreamCatcher</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript>
            <link rel="stylesheet" href="assets/css/noscript.css" />
        </noscript>

        <style>
            @import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

            #img {
                float: left;
                height: 150px;
                width: 150px;
                margin-left: 15px;
               
                
            }
            /* ��ư */
			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}
            /*���� ���� �Ұ� ���̺� */
            #doctorintr{
                background-color: rgba(255, 255, 255, 0.767);

            }            
            /*����û*/
            #qa{
                background-color:rgb(255 255 255 / 15%);

            }

            /* �޴� */
            .menu {
                text-align: center;
            }

            #main {
                background-color: rgba(255, 255, 255, 0.89);
            }


            .minititle {
                font-size: 25px;
                font-weight: bold;
                text-align: center;
                font-weight: 500;
            }

            /* padding���� �����ٶ� ��� */
            .padding {
                padding: 30px;
            }
           /* ����Ʈ �ٶ� ��� */
            b {
                background-color: rgba(244, 165, 96, 0.596);
                display: inline;
                border-radius: 10px;
            }

            .point {
                text-align: center;
                background-color: rgba(189, 160, 185, 0.39);
                
            }   
        </style>

    </head>

    <body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

        <!-- Wrapper -->
        <div id="wrapper">
            <span class="span1">
                <button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary"
                    style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
                <button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
                    style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
            </span>

            <!-- ������ ��ư ������ �̵��ؿ� �� -->
            <h1 id="top"></h1>

            <!-- Header -->
            <header id="header">
                <h1>�ǷἭ��</h1>
                <br>
                <br>
            </header>

            <table class="menu">
                <tr>
                    <td><a href="doctor main.jsp">Main</a></td>
                    <td><a href="doctormine.jsp">���� �ǵ��</a></td>
                    <td><a href="doctortip.jsp">�ǷἭ��</a></td>
                    <td><a href="doctorcheck.jsp">�������üũ</a></td>
                </tr>
            </table>

            <br>
            <!-- ���� -->
            <h3 class="minititle">���� ���� �Ұ�</h3>
            <br>
            <section> 

                <table style="color: gray;">
                    
                    
                    <tr style="border: solid; color: rgba(255, 255, 255, 0.1);"> 
                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="https://sev.severance.healthcare/sev/about/location/map.do" target="_blank"><img id="img" src="./������/�������-removebg-preview.png" class="card-img-top"></a>
                        
                            
                        </td>

                        <td> <a href="https://www.amc.seoul.kr/asan/hospitalguide/location/location.do" target="_blank"><img id="img" src="./������/����ƻ꺴��-removebg-preview.png" class="card-img-top"></a>
                            
                        </td>
                       </tr>
                       
                    <tr> 
                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="http://www.snuh.org/content/M002001001.do" target="_blank"><img id="img" src="./������/������_�������2-removebg-preview.png" class="card-img-top"></a>
                            
                       
                        </td>

                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="http://www.samsunghospital.com/home/info/map.do" target="_blank"><img id="img" src="./������/�Ｚ���ﺴ��-removebg-preview.png" class="card-img-top"></a>
                           
                  
                        </td>
                       </tr>
                    </div>
                </table>
            </section>
                       
            <br>
            <h2 class="minititle">��� ��û</h2>
            <br>
            <section id="qa"> 
                <table>
                <tr>
                    <td>��� ����</td>
                    <td><input type="text" name="title"> </td>
                </tr>
                <tr>
                <td>�ۼ��� ����ó</td>
                <td><input type="text" name="number"> </td>
                </tr>
                <tr>
                    <td>���� ����</td>
                    <td>
                        <select name="hospital">
                            <option value="hos1">�����������</option>
                            <option value="hos2">����ƻ꺴��</option>
                            <option value="hos3">������б�����</option>
                            <option value="hos1">�Ｚ���ﺴ��</option>
                        </select>
                    </td>                    
                </tr>
                <tr>
                    <td colspan="2">����</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input name="fileName" type="file" style="float:left">
                        <textarea  name = "content" rows="5" style="resize: none;"> </textarea>			
                    </td>
                </tr>
                <tr>
                    <td colspan="2">     
                        <div style="padding-left:160px;">                   
                        <input type="submit" value="����" onclick="alert('��� ��û �Ϸ� �Ǿ����ϴ�!');"style="center">
                        </div>
                    </td>
                </tr>
            </table>
            </section>
            <section>



                <br>
                <br>
                <h4 id="p2">���� ���� �� ���� ?</h4>
                <p id="p2">���ǻ��� 112 <br>
                �ʾ��ٰ� �����Ҷ��� ���� �����̴ϴ�.</p>
                <br>

        </div>

        <button type="button" id="gotop"><a href="#top">�� ����</a></button>


        <br><br><br><br><br>
        </div>
        </section>


        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>

    </html>