<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
    <title>Dream Catcher</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="assets/css/noscript.css" />
    </noscript>


    <!-- 추가한 곳 -->
    <!-- 부트스트랩 추가부분 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



    <style>
        @import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);


		.carousel-inner #img1 {
			width : 100%;
			height : auto;
		
		}


        #img {
            width: 20px;
            height: 20px;
        }

        #bt {
            text-align: center;
            margin-left: 20px;
            margin-right: 20px;
            color: white;
        }

        #bt1 {
            color: black;
            background-color: whitesmoke;
        }

        /* 추가된 부분 */


        /* 이미지 투명하게 하기 */
        #img1 {
            opacity: 0.7;
            filter: alpha(opacity=50);
        }

        .carousel-caption {
            font-size: large;
            color: #f7f7f7;
            ;
            font-weight: bold;
            margin-bottom: 4px;

        }

        #txt1 {
            text-align: center;
            color: #f7f7f7;
            ;
        }

        .btn-outline-secondary {
            background-color: transparent;
            box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%);
            color: #ffffff;
            border-radius: 8px;
            border-color: rgb(255 255 255 / 35%);
            padding-right: 10px;
            width: 80px;
            font-size: 12px;
            margin-left: 10px;
        }
        .btn btn-outline-secondary1{
            background-color: transparent;
            box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%);
            color: #ffffff;
            border-radius: 8px;
            border-color: rgb(255 255 255 / 35%);
            padding-right: 10px;
            width: 80px;
            font-size: 12px;
            margin-left: 10px;   
        }
        .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
#header{
	padding-top: 85px;
}
    </style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
    <br>
    
    <!-- Wrapper -->
    <div id="wrapper">
        <span class="span1">
        <button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
        <button type="button" class="btn btn-outline-secondary" onclick="location.href='mypage.jsp'" style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>
        <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
        </span>
        
        <!-- 맨위로 버튼 누를때 이동해올 곳 -->
        <h1 id="top"></h1>

        <!-- Header -->
        <header id="header">
            <h1 style="color: #f7f7f7;;">당신을 위한 컨텐츠</h1>
            <br>
            <br>
        </header>
		<br>
		<br>
		
        <table>
            <tr align="center">
                <td>
                    <a id="bt" href="perfume_시트러스.jsp">향초</a>
                    <a id="bt" href="content_meditation.jsp">명상</a>
                    <a id="bt" href="content_asmr.jsp">ASMR</a>
                    <a id="bt" href="content_living.jsp">리빙 제품</a>
                    <a id="bt" href="content_tea.jsp">차</a>
                </td>
            </tr>
        </table>
		<br>
<br>
        <br><br>
        <!-- Content -->
        <section id="content" class="main">

                        <div>
                            <div id="carousel-example-generic" class="carousel slide">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>


                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <a href="https://www.coupang.com/np/search?q=%ED%96%A5%EC%B4%88&src=1042016&spec=10304102&addtag=200&ctag=%ED%96%A5%EC%B4%88&lptag=%ED%96%A5%EC%B4%88&itime=20220328172647&pageType=SEARCH&pageValue=%ED%96%A5%EC%B4%88&wPcid=17485827805766941254798&wRef=www.google.com&wTime=20220328172647&redirect=landing&gclid=CjwKCAjwuYWSBhByEiwAKd_n_mGJf7lTGhHlgLRdsDdU3vGFVTJe14I7X2SS2Qvh2Xx-JPcEBDvCrBoCfHcQAvD_BwE"target="_blank"><img src="./img_content/메인향초.jpg" id="img1"></a>
                                        <div class="carousel-caption">
                                            향초
                                        </div>
                                    </div>

                                    <div class="item">
                                        <a href="https://www.youtube.com/results?search_query=%EB%AA%85%EC%83%81" target="_blank"><img src="./img_content/메인명상.jpg" id="img1"></a>
                                        <div class="carousel-caption">
                                            명상
                                        </div>
                                    </div>

                                    <div class="item">
                                        <a href="https://ohou.se/productions/feed?query=%EC%9D%B4%EB%B6%88&search_affect_type=Typing&input_source=productions" target="_blank"><img src="./img_content/메인리빙.jpg" id="img1"></a>
                                        <div class="carousel-caption">
                                            리빙
                                        </div>
                                    </div>

                                    <div class="item">
                                        <a href="https://www.youtube.com/results?search_query=asmr" target="_blank"><img src="./img_content/메인ASMR.jpg" id="img1"></a>
                                        <div class="carousel-caption">
                                            ASMR
                                        </div>
                                    </div>

                                    <div class="item">
                                        <a href="https://www.coupang.com/np/search?component=&q=%EC%B0%A8&channel=user" target="_blank"><img src="./img_content/메인차.jpg" id="img1"></a>
                                        <div class="carousel-caption">
                                            차
                                        </div>
                                    </div>



                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic" role="button"
                                    data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button"
                                    data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                </a>
                            </div>
                


            <br>
            <br>
            <br>
            <br>
            <h4 id="txt1">추가하고 싶은 카테고리가 있다면 알려주세요</h4>
            <p id="txt1" style="text-align:center;">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
            <br>

        </section>


    </div>



    <br><br><br><br><br>
    </div>


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