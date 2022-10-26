<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/custom.css">
 <link rel="stylesheet" href="./css/mealkit_addition_edition_deletion.css">

</head>
<body id="admin">
 <section class="page_core">

            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a><br>
                <div class="head_word color-white"><h1>이벤트 관리</h1></div>
            </div>
        	<form name="frm" action="99_eventAdd.do" method="post">

			<div class="row line">

				<div class="col-3">
					<input id="ename" class="btn_product_name btn_mealkit_name dark_grey_btn"
						type="text" name="e_name" placeholder="이벤트 이름">
				</div>
			</div>
			<div class="row line">

				<div class="col-3">
					<input id="econtent" class="btn_product_name btn_mealkit_name dark_grey_btn"
						type="text" name="e_content" placeholder="이벤트 내용">
				</div>
			</div>
			<div class="row line">
				<div class="" style="color: white; display:inline-block;">이벤트 시작일 : </div>
				<div class="" style="display: inline-block;">
					<input id="start" class="textbox" name="e_start" type="date">
				</div>
				
			</div>
			<div class="row line">
				<div class="col-2 item align-self-center" style="color: white; display: inline-block;">이벤트
					종료일 : </div>
				<div style="display: inline-block;">
					<input id="end" type="date" id="e-content" name="e_end" >
				</div>
			</div>

			<br>
			<div class="row">
			
                <div class="" >
                    <button id="insertEvent" type="button">이벤트 추가</button>
                    <button id="modifyEvent" type="button" >이벤트 수정</button>
                    <button id="deleteEvent" type="button" >이벤트 삭제</button>
                </div> 
            </div>   						
		</form>
    </section>
    
                <table style="width: 700px; position: relative; bottom: 300px; left:400px;">
                    <thead>
                        <tr>
                            <th class="table_head th_">이벤트명</th>
                            <th class="table_head th_">시작일</th>
                            <th class="table_head th_">종료일</th>
                            <th class="table_head th_">선택</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                   	<c:forEach items="${eventList}" var="event">
						<tr>
							<td>${event.e_name}</td>
							<td>${event.e_start} </td>
							<td>${event.e_end}</td>						
							<td style="text-align: center;">
							<input class="radio" type="radio" name="eventSelect">
							<input type="hidden" value='${event.e_content}'>
							</td>
												
						</tr>	
					</c:forEach>	
                    </tbody>
                </table>



    
    

</body>
  <script src="js/jquery-3.2.1.min.js"></script>
<script>
  
  
	$('.radio').click(function(){
		let ename = $(this).parent().parent().find('td:eq(0)').text();
		let start = $(this).parent().parent().find('td:eq(1)').text().split(" ")[0];
		let end = $(this).parent().parent().find('td:eq(2)').text().split(" ")[0];
		let econtent = $(this).parent().parent().find('td:eq(3) input[type="hidden"]').val();
		
		
		$('#ename').val(ename);
		$('#start').val(start);
		$('#end').val(end);
		$('#econtent').val(econtent);
	})
	
	$('#insertEvent').click(function(){
		let ename = $('#ename').val();
		$('form[name="frm"]').attr('action','insertEvent.do');
		for(let i = 0; i < $('tbody tr').length; i++){
			let list = $('tbody tr:eq('+i+') td:eq(0)').text()
			if(list == ename){
				alert("이미 존재하는 이벤트명 입니다.")
				return;
			}
		}
		if(ename == ""){
			alert("이벤트명을 입력해주세요");
			return;
		}
		frm.submit();
		alert(ename+" 이벤트가 추가 되었습니다");
	})
	
	$('#modifyEvent').click(function(){
		let ename = $('#ename').val();
		$('form[name="frm"]').attr('action','modifyEvent.do');
		if(ename == ""){
			alert("수정할 이벤트를 선택해주세요");
			return;
		}
		for(let i = 0; i < $('tbody tr').length; i++){
			let list = $('tbody tr:eq('+i+') td:eq(0)').text()
			if(list == ename){
				frm.submit();
				alert(ename+" 이벤트가 수정 되었습니다");
				return;
			}
		}
				alert("존재하지 않는 이벤트 입니다.")
	})
	
	$('#deleteEvent').click(function(){
		let ename = $('#ename').val();
		$('form[name="frm"]').attr('action','deleteEvent.do');
		if(ename == ""){
			alert("삭제할 이벤트를 선택해주세요");
			return;
		}
		for(let i = 0; i < $('tbody tr').length; i++){
			let list = $('tbody tr:eq('+i+') td:eq(0)').text()
			if(list == ename){
				frm.submit();
				alert(ename+" 이벤트가 삭제 되었습니다.");
				return;
			}
		}
		alert("존재하지 않는 이벤트 입니다.")
	})
	

</script>
</html>