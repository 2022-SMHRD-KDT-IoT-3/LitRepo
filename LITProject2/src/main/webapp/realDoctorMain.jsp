<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>DreamCatcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<!-- 차트 js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>



<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

/* 버튼 */
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

/* 메뉴 */
.menu {
	text-align: center;
}

.fc-header-toolbar {
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}

#main {
	background-color: rgba(255, 255, 255, 0.966);
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<div id="wrapper">
		<span class="span1">
			<button type="button" onclick="location.href='main_login.jsp'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span> <br> <br> <br> <br>
		<header id="header">
			<h1>스케줄</h1>
			<br>
		</header>

		<br>
		<table class="menu">
			<tr>
				<td><a href="realDoctorMain.jsp">스케줄</a></td>
				<td><a href="realmonitoring.jsp">환자 모니터링</a></td>
				<td><a href="realBoard.jsp">게시판</a></td>
			</tr>
		</table>

		<br>
		<!-- 컨텐츠 시작  부분 -->
		<div id="main" style="padding: 30px;">

			<div id='calendar-container'>
				<div id='calendar'></div>
			</div>
			<br>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<script>
		(function() {
			$(function() {
				// calendar element 취득
				var calendarEl = $('#calendar')[0];
				// full-calendar 생성하기
				var calendar = new FullCalendar.Calendar(calendarEl, {
					height : '700px', // calendar 높이 설정
					expandRows : true, // 화면에 맞게 높이 재설정
					slotMinTime : '08:00', // Day 캘린더에서 시작 시간
					slotMaxTime : '20:00', // Day 캘린더에서 종료 시간
					// 해더에 표시할 툴바
					headerToolbar : {
						left : 'prev,next',
						center : 'title',
						right : 'dayGridMonth,timeGridDay'
					},
					//dayGridMonth,listWeek,timeGridWeek
					initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
					initialDate : '2022-04-01', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
					navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
					editable : true, // 수정 가능?
					selectable : true, // 달력 일자 드래그 설정가능
					nowIndicator : true, // 현재 시간 마크
					dayMaxEvents : true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
					locale : 'ko', // 한국어 설정
					eventAdd : function(obj) { // 이벤트가 추가되면 발생하는 이벤트
						console.log(obj);
					},
					eventChange : function(obj) { // 이벤트가 수정되면 발생하는 이벤트
						console.log(obj);
					},
					eventRemove : function(obj) { // 이벤트가 삭제되면 발생하는 이벤트
						console.log(obj);
					},
					select : function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
						var title = prompt('Event Title:');
						if (title) {
							calendar.addEvent({
								title : title,
								start : arg.start,
								end : arg.end,
								allDay : arg.allDay
							})
						}
						calendar.unselect()
					},
					// 이벤트
					events : [ {
						title : '세미나 참가',
						start : '2022-04-05',
					}, {
						title : '논문 검토',
						start : '2022-04-15',
						end : '2021-04-10'
					}, {
						groupId : 999,
						title : '환자 수술',
						start : '2022-04-19T16:00:00'
					},

					{
						title : '컨퍼런스 참가',
						start : '2022-04-11',
						end : '2022-04-13'
					}, {
						title : '미팅',
						start : '2022-04-28T10:30:00',
					},

					{
						title : '의무교육링크',
						url : 'http://google.com/', // 클릭시 해당 url로 이동
						start : '2022-04-22'
					} ]
				});
				// 캘린더 랜더링
				calendar.render();
			});
		})();
	</script>








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