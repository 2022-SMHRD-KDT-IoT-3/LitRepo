<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>

		<title>DreamCatcher</title>
		
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
            @import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
			/* 프로필 영역 스타일 가운데 정렬 */
			#profile{
				margin: auto;
			text-align: center;
			margin-bottom: 10px;
			padding:30px;
			padding-top:50px;
			}


			#dateS{
				margin: auto;
			text-align: center;
			}

			#sujung{
				text-align:center;
				padding-bottom:30px;
			}
            .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
.btn-outline-secondary {
	/*위에 홈 로그인버튼*/
	background-color: transparent;
    box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%);
    color: #ffffff;
	border-radius: 8px;
	border-color:rgb(255 255 255 / 35%);
	padding-right:10px;
	width:80px;
	font-size:12px;
}
#header{
    padding-top:100px;
}
#main1{
            background-color: rgba(255, 255, 255, 0.644);
            border-radius: 20px;
         }

			#ptxt1{
				background-color: rgba(239, 241, 147, 0.747);
		
}

			#ptxt2{
				background-color: rgba(255, 208, 251, 0.76);
			}
			#ptxt3{
				background-color: rgba(180, 157, 123, 0.623);
			}
			#ptxt4{
				background-color: rgba(202, 59, 114, 0.61);
			}
			#ptxt5{
				background-color: rgba(67, 146, 221, 0.712);
			}
			#tb{
				text-align: center;
				height: 30px;
				margin: auto;

			}
		</style>

</head>
<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>

<%
	HttpSession session1 = request.getSession();
	
	MemberDTO dto = (MemberDTO) session1.getAttribute("info");
	
	System.out.println(dto);
	
	String birthday = dto.getMem_birthday().replace(" 00:00:00", "");
	System.out.println(birthday);
	
	
%>


		

		<span class="span1">
		
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='main_login.jsp'"
                style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'"
                style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		
		</span>

		<!-- Wrapper -->
			<div id="wrapper">
                <div id="wrapper">
                    <span class="span1">
                        <button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;" >HOME</button>
                        <button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
            </span>
				<!-- Header -->
					<header id="header">
						<h1 id="join">마이페이지</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main">

						<!-- 프로필 영역 참고로 세로 영역 키우고 싶으면 height로 조정하기-->
						<div id="profile">
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
			
						</div>
						<div id="sujung">
							<button  onclick="location.href='joinchange.jsp'" style="font-family: 'Nanum Myeongjo', serif;">회원정보 수정</button>
						</div>
						<form>
							<table id="table">
								<form action="">
									<!-- 첫번째 th -->
									<tr>
										<td align="right">아이디</td>
										<td><%= dto.getMem_id() %></td>
										<td></td>
									</tr>
							 
									<tr>
										<td align="right">닉네임</td>
										<td><%= dto.getMem_nick() %></td>
									</tr>

									<tr>
										<td align="right">성별</td>
										<td><%= dto.getMem_gender() %></td>
										<td></td>
										
									</tr>	

									
       								 <tr>
            							<td align="right">생일</td>
            							<td><%= birthday %></td>
										</tr>

							</table>
						</form>

						<!-- Buttons -->
						<header id="header">
												<h1 id="join">선호하는 향기</h1>
												<br></br>
											</header>
						<!--  마지막 버튼 -->
						<div>
							<div class="d-grid  col-8 mx-auto" id="gender">
							</br></br>
								<br>
							</div>

							<div><br></div>
						
						</div>
						<div id="main1">
						
												
												
												<form>
													<table>
														<form action="">
															<tr>
																<td align="center" id="ptxt1">시트러스
																</td>
																<td>감귤계열의 향으로 달고 신 느낌을 주면 산뜻한 향기입니다.
																	상큼한 향을 좋아하신다면 추천드립니다. 대표적으로 오렌지, 레몬, 버베나 향이 있습니다.
																</td>
															</tr>
															<tr>
																<td align="center" id="ptxt2">플로럴</td>
																<td>하나의 꽃 향기를 표현한 것으로 각 꽃의 이미지에 살려서 만든 향기입니다.
																	여성향수에 많이 들어가는 향기이며 부드러운 느낌을 줍니다. 대표적으로
																	장미,쟈스민,은방울꽃, 라일락 향기가 있습니다.
																</td>
															</tr>
															<tr>
																<td align="center" id="ptxt3">우디</td>
																<td>나무의 껍질이나 향목을 연상시키는 은은한 향이 특징입니다. 안정적이고 무거운 느낌이 있고 남성향수에 많이 이용됩니다. 또한 그린향과 같이 쓰이게 되면 숲의 향을 느끼실 수 있습니다.</td>
																
															</tr>
															<tr>
																<td align="center" id="ptxt4">프루티</td>
																<td>감귤계 이외의 과일향으로 이루어져 있고 강한 과일향이 특징입니다. 다른향과 섞여서 쓰이는 경우가 많습니다
																. 대표적으로 애플,피치,망고,스트로베리 등과 열대과일로 이루어져있습니다.
																</td>
															</tr>
															<tr>
																<td align="center" id="ptxt5">오셔닉</td>
																<td>시원한 느낌을 주는 향으로 시트러스계열의 향과 코코넛향이 베이스가 되어 해변가를 연상시킵니다.
																	중성적인 매력의 향으로 남,여 향수 모두에 사용됩니다.
																</td>
															</tr>
													</table>
												</form>
											</div>
												<!-- 향기선택 -->
												<br><br><br>
												<table>
													<tr>
															<div align="center"   id="tb"><h5>좋아하는 향기를 선택해주세요</h5></div>
															<br>
															<h6 align = "center">한 달 마다 향초 키트를 보내드립니다</h6>
														</tr>
														<br>
						
													<tr>
														<td>
															
															<div class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
																<label class="form-check-label" for="inlineCheckbox1">시트러스</label>
															  </div>
															  <div class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
																<label class="form-check-label" for="inlineCheckbox2">플로럴</label>
															  </div>
															  <div class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
																<label class="form-check-label" for="inlineCheckbox3">우디</label>
															</div>
						
															<td>
																<div class="form-check form-check-inline">
																	<input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
																	<label class="form-check-label" for="inlineCheckbox4">프루티</label>
																  </div>
																  <div class="form-check form-check-inline">
																	<input class="form-check-input" type="checkbox" id="inlineCheckbox5" value="option5">
																	<label class="form-check-label" for="inlineCheckbox5">오션스</label>
																  </div>
															</td>									
													</td>
												</tr>
												
												<tr  id="btn1"><td colspan="2">
												<button type="button" style="margin-left:110px" >저장하기</button>
												</td></tr>
											
											</table>
												<br>
						</form>
					</div>
					<footer id="footer">
						
						<section>

							<dl class="alt">
								<dt>Address</dt>
								<dd>광주 동구 예술길 31-15</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul>
						</section>
					
					</footer>
				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>