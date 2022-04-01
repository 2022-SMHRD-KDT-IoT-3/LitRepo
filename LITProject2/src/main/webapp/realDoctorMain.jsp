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

<!-- ��Ʈ js -->
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
<!-- fullcalendar ��� CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>



<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

/* ��ư */
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

/* �޴� */
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
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
		</span> <br> <br> <br> <br>
		<header id="header">
			<h1>������</h1>
			<br>
		</header>

		<br>
		<table class="menu">
			<tr>
				<td><a href="realDoctorMain.jsp">������</a></td>
				<td><a href="realmonitoring.jsp">ȯ�� ����͸�</a></td>
				<td><a href="realBoard.jsp">�Խ���</a></td>
			</tr>
		</table>

		<br>
		<!-- ������ ����  �κ� -->
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
				// calendar element ���
				var calendarEl = $('#calendar')[0];
				// full-calendar �����ϱ�
				var calendar = new FullCalendar.Calendar(calendarEl, {
					height : '700px', // calendar ���� ����
					expandRows : true, // ȭ�鿡 �°� ���� �缳��
					slotMinTime : '08:00', // Day Ķ�������� ���� �ð�
					slotMaxTime : '20:00', // Day Ķ�������� ���� �ð�
					// �ش��� ǥ���� ����
					headerToolbar : {
						left : 'prev,next',
						center : 'title',
						right : 'dayGridMonth,timeGridDay'
					},
					//dayGridMonth,listWeek,timeGridWeek
					initialView : 'dayGridMonth', // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
					initialDate : '2022-04-01', // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
					navLinks : true, // ��¥�� �����ϸ� Day Ķ������ Week Ķ������ ��ũ
					editable : true, // ���� ����?
					selectable : true, // �޷� ���� �巡�� ��������
					nowIndicator : true, // ���� �ð� ��ũ
					dayMaxEvents : true, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
					locale : 'ko', // �ѱ��� ����
					eventAdd : function(obj) { // �̺�Ʈ�� �߰��Ǹ� �߻��ϴ� �̺�Ʈ
						console.log(obj);
					},
					eventChange : function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
						console.log(obj);
					},
					eventRemove : function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
						console.log(obj);
					},
					select : function(arg) { // Ķ�������� �巡�׷� �̺�Ʈ�� ������ �� �ִ�.
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
					// �̺�Ʈ
					events : [ {
						title : '���̳� ����',
						start : '2022-04-05',
					}, {
						title : '�� ����',
						start : '2022-04-15',
						end : '2021-04-10'
					}, {
						groupId : 999,
						title : 'ȯ�� ����',
						start : '2022-04-19T16:00:00'
					},

					{
						title : '���۷��� ����',
						start : '2022-04-11',
						end : '2022-04-13'
					}, {
						title : '����',
						start : '2022-04-28T10:30:00',
					},

					{
						title : '�ǹ�������ũ',
						url : 'http://google.com/', // Ŭ���� �ش� url�� �̵�
						start : '2022-04-22'
					} ]
				});
				// Ķ���� ������
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