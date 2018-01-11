<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />
<link rel="stylesheet" href="<%=rootPath%>/ui/css/bootstrap.min.css" />
<body style="background-color:ivory">
<div class="container">
		<div class="starter-template">

			<form class="form-signin">
				<table class="table">
					<tr>
						<th>반이름</th>
						<td><input type="text" id="ciName" name="ciName"
							class="form-control" placeholder="반이름" autofocus></td>
					</tr>
					<tr>
						<th>설명</th>
						<td><input type="text" id="ciDesc" name="ciDesc"
							class="form-control" placeholder="설명"></td>
					</tr>
					<tr>
						<td colspan="4"> 
							<input class="btn btn-lg btn-primary btn-block form-control" type="button"
								id="singnBtn" value="반추가" onclick="insertClass()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>

<script>
function insertClass(){
	//"uiName,uiAge,uiId,uiPwd,ciNo,address"
	var ciName = $("#ciName").val().trim();
	var ciDesc = $("#ciDesc").val().trim();
	var param= {ciName:ciName, ciDesc:ciDesc};
	param = "param=" + JSON.stringify(param);
	$.ajax({
		url : '/class/insert',
		type : 'post',
		data : param,
		success:function(res){
			var obj = JSON.parse(res);
			alert(obj.msg);
			if(obj.result=="ok"){
				location.href="/view/classinfo/insert";
			}
		},
		error:function(xhr,status,error){
			
		}		
	})
}
</script>
</html>