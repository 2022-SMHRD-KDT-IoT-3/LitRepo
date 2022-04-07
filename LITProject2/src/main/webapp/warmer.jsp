<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<button type = "button" value = "1" onclick ="warmerOnOff('On')">on</button>
<button type = "button" value = "1" onclick ="warmerOnOff('Off')">off</button>

	

	
	
	<script src="assets/js/jquery.min.js"></script>
	
	<script type="text/javascript">
	
		function warmerOnOff(State){
			
			$.ajax({
				type : 'post',
	            url : 'restoreWarmer',
	            data : {
	                'warmerState' : "warmer" + State
	            },
	            success : function(check){
	            	
	            	if(check){
	                	alert("완료")
					} 
	            },
	            error : function(){
	                
	            }	
			
			
			
			})
			
			
			
			
			
			
			
		}
	
	</script>
	
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>