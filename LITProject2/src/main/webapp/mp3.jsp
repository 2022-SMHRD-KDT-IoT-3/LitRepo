<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<button type = "button" value = "1" onclick ="musicPlayer(1)">1</button>
	<button type = "button" value = "1" onclick ="musicPlayer(2)">2</button>
	<button type = "button" value = "1" onclick ="musicPlayer(3)">3</button>
	<button type = "button" value = "1" onclick ="musicPlayer(4)">4</button>
	<button type = "button" value = "1" onclick ="musicPlayer(5)">5</button>
	<button type = "button" value = "1" onclick ="musicPlayer(6)">6</button>
	<button type = "button"  onclick ="musicPlayer(17)">7</button>
	<button type = "button" onclick="musicPlayer('p')">p/c</button>
	<button type = "button" onclick="musicPlayer('+')">+</button>
	<button type = "button" onclick="musicPlayer('-')">-</button>
	

	
	
	<script src="assets/js/jquery.min.js"></script>
	
	<script type="text/javascript">
	
		function musicPlayer(musicList){
			
			$.ajax({
				type : 'post',
	            url : 'restoreMp31',
	            data : {
	                'select' : "music : " + musicList
	            },
	            success : function(check){
	            	
	            	if(check){
	                	
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
	


</form>
</body>
</html>