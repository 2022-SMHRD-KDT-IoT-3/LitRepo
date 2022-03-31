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
            /* 버튼 */
			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}
            /*제휴 병원 소개 테이블 */
            #doctorintr{
                background-color: rgba(255, 255, 255, 0.767);

            }            
            /*상담신청*/
            #qa{
                background-color:rgb(255 255 255 / 15%);

            }

            /* 메뉴 */
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

            /* padding으로 여유줄때 사용 */
            .padding {
                padding: 30px;
            }
           /* 포인트 줄때 사용 */
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
                    style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
            </span>

            <!-- 맨위로 버튼 누를때 이동해올 곳 -->
            <h1 id="top"></h1>

            <!-- Header -->
            <header id="header">
                <h1>의료서비스</h1>
                <br>
                <br>
            </header>

            <table class="menu">
                <tr>
                    <td><a href="doctor main.jsp">Main</a></td>
                    <td><a href="doctormine.jsp">맞춤 피드백</a></td>
                    <td><a href="doctortip.jsp">의료서비스</a></td>
                    <td><a href="doctorcheck.jsp">수면상태체크</a></td>
                </tr>
            </table>

            <br>
            <!-- 내용 -->
            <h3 class="minititle">제휴 병원 소개</h3>
            <br>
            <section> 

                <table style="color: gray;">
                    
                    
                    <tr style="border: solid; color: rgba(255, 255, 255, 0.1);"> 
                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="https://sev.severance.healthcare/sev/about/location/map.do" target="_blank"><img id="img" src="./수정본/세브란스-removebg-preview.png" class="card-img-top"></a>
                        
                            
                        </td>

                        <td> <a href="https://www.amc.seoul.kr/asan/hospitalguide/location/location.do" target="_blank"><img id="img" src="./수정본/서울아산병원-removebg-preview.png" class="card-img-top"></a>
                            
                        </td>
                       </tr>
                       
                    <tr> 
                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="http://www.snuh.org/content/M002001001.do" target="_blank"><img id="img" src="./수정본/수정본_서울대학2-removebg-preview.png" class="card-img-top"></a>
                            
                       
                        </td>

                        <td style="border: solid; color: rgba(255, 255, 255, 0.1);"> <a href="http://www.samsunghospital.com/home/info/map.do" target="_blank"><img id="img" src="./수정본/삼성서울병원-removebg-preview.png" class="card-img-top"></a>
                           
                  
                        </td>
                       </tr>
                    </div>
                </table>
            </section>
                       
            <br>
            <h2 class="minititle">상담 신청</h2>
            <br>
            <section id="qa"> 
                <table>
                <tr>
                    <td>상담 제목</td>
                    <td><input type="text" name="title"> </td>
                </tr>
                <tr>
                <td>작성자 연락처</td>
                <td><input type="text" name="number"> </td>
                </tr>
                <tr>
                    <td>병원 선택</td>
                    <td>
                        <select name="hospital">
                            <option value="hos1">세브란스병원</option>
                            <option value="hos2">서울아산병원</option>
                            <option value="hos3">서울대학교병원</option>
                            <option value="hos1">삼성서울병원</option>
                        </select>
                    </td>                    
                </tr>
                <tr>
                    <td colspan="2">내용</td>
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
                        <input type="submit" value="제출" onclick="alert('상담 신청 완료 되었습니다!');"style="center">
                        </div>
                    </td>
                </tr>
            </table>
            </section>
            <section>



                <br>
                <br>
                <h4 id="p2">오늘 날씨 참 좋죠 ?</h4>
                <p id="p2">문의사항 112 <br>
                늦었다고 생각할때가 가장 빠른겁니다.</p>
                <br>

        </div>

        <button type="button" id="gotop"><a href="#top">맨 위로</a></button>


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