<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=rootPath%>/ui/css/bootstrap.min.css" />
<title>Class List</title>
<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />
<link rel="stylesheet" href="<%=rootPath%>/ui/css/list.css" />
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h2 class="panel-title">
									Class List
									<button type="button" class="btn btn-sm btn-primary btn-create"
										onclick="addonclick()">추가</button>
								</h2>
							</div>
							<div class="col col-xs-6 text-right">
								<input type="text" class="input">
								<button type="button" class="btn btn-sm btn-primary btn-create">검색</button>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table id="grid1" data-key="ciNo"
							class="table table table-striped table-list">
							<thead>
								<tr>
									<th class="text-center" data-field="ciNo,ro">번호</th>
									<th class="text-center" data-field="ciName,txt">반이름</th>
									<th class="text-center" data-field="ciDesc,txt">설명</th>
									<th class="text-center" data-field="BTN"><em
										class="glyphicon glyphicon-asterisk"></em></th>
								</tr>
							</thead>
							<tbody id="result_tb">
								<c:import url="/class/list" var="res">
								</c:import>
								<tr>
									<td><input value="${res}"></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
function updateClass(uiNo){
	var uiName = $("#uiName" + uiNo).val().trim();
	var uiAge = $("#uiAge" + uiNo).val().trim();
	var address = $("#address" + uiNo).val().trim();
	var param={uiNo:uiNo, uiName:uiName, uiAge:uiAge, address:address};
	param = "param=" + JSON.stringify(param);
	$.ajax({
		url : '/class/update',
		data : param,
		type : 'post',
		dataType:'json',
		success:function(res){
			alert(res.msg);
			if(res.result=='ok'){
				location.reload();
			}
		},
		error:function(xhr,status,error){
		}
	})
}

function deleteUser(uiNo){
	var param = "uiNo=" + uiNo;
		$.ajax({
			url : '/user/delete',
			data : param,
			type : 'post',
			dataType:'json',
			success:function(res){
				alert(res.msg);
				if(res.result=='ok'){
					location.reload();
				}
			},
			error:function(xhr,status,error){
			}
		})
}

function deleteClass(ciNo){
	var isDelete = confirm("진짜 지울라고???");
	alert(isDelete);
	if(isDelete){
		$.ajax({
			url : '/user/list',
			type : 'get',
			success:function(res){
				var list = JSON.parse(res);
				var cnt = 0;
				var users = [];
				for(var uc of list){
					if(uc.ciNo==ciNo){
						cnt++;
						users.push(uc.uiNo);
					}
				}
				if(cnt>0){
					var isDelete = confirm("선택한 반에 "+ cnt + "명의 학생 정보가 존재합니다 삭제 하시겠습니까?");
					alert(isDelete);
				if(isDelete){
					for(var u of users){
					deleteUser(u);
					}
				}	
					}
				}
			})
			
	var param = "ciNo=" + ciNo;
		$.ajax({
			url : '/class/delete',
			data : param,
			type : 'post',
			dataType:'json',
			success:function(res){
				alert(res.msg);
				if(res.result=='ok'){
					location.reload();
				}
			},
			error:function(xhr,status,error){
			}
		})
	}
}

var colsinfo = [];
$(document).ready(function(){
	var colList = $("#grid1 th[data-field]");
	for(var i=0;i<colList.length;i++){
		colsinfo.push(colList[i].getAttribute("data-field"));
	}
	var keyCol = $("#grid1").attr("data-key");
	$.ajax({
		url : '/class/list',
		type : 'get',
		success:function(res){
			var list = JSON.parse(res);
			var str ="";
			for(var uc of list){
				var key = uc[keyCol];
				str += "<tr>";
				for(var field of colsinfo){
					str += "<td class='text-center'>";
					if(field=="BTN"){
						str += '<a class="btn btn-default" onclick="updateUser(' + key + ')"><em class="glyphicon glyphicon-pencil"></em></a>';
						str += '<a class="btn btn-danger" onclick="deleteClass(' + key + ')"><em class="glyphicon glyphicon-trash"></em></a>';
					}else{
						var colName = field.split(",")[0];
						var colType = field.split(",")[1];
						if(colType=="ro"){
							str += uc[colName];
						}else{
						str += "<input type='text' class='text-center' style='border-style:inset; width:100px;' id='"+colName + key + "' value='" + uc[colName] + "'>";
						}
					}
					str += "</td>";
				}
				str += "</tr>";
			}
			$("#result_tb").html(str);
		},
		error:function(xhr,status,error){
			
		}
	});
});

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
				location.href="/view/classinfo/list";
			}
		},
		error:function(xhr,status,error){
			
		}		
	})
}

function addonclick(){	
	var url= "<%=rootPath%>/view/classinfo/insert";  
	var winWidth = 800;
	var winHeight = 300;
	var popupOption= "width="+winWidth+", height="+winHeight;
	window.open(url,"",popupOption)
}
</script>
</html>