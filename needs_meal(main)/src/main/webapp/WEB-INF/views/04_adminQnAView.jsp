<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <link rel="stylesheet" href="css/customer_question_viewing.css">
</head>

<body>
 <section class="page_core">
        <div class="page_core_container">
            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
                
            </div>
            <br>
            <br>

            <div class="page_element_buttom">
                <!-- <div class="text_style_head">고객문의 리스트</div> -->
                <br>
                <table>
                    
                        <tr>
                            <th class="table_head th_" style="text-align: left;">${qnAView.q_title }</th>
                        </tr>
                        <tr>
	                        <td id="user">${qnAView.u_id} | ${qnAView.q_date}     </td>
	                        
                        </tr>
                         <tr>
	                        <td>
	                        	${qnAView.q_content}
	                        </td>
                        </tr>
                                           
                </table>
               
                
                <input id="answer" type="button" value="답변하기" onclick="location.href='04_adminQnAForm.do?u_id=${qnAView.u_id}&q_id=${qnAView.q_id}&q_title=${qnAView.q_title}'">
                <input type="button" value="목록" onclick="location.href='04_adminQnAList.do'">


            </div>
        </div>
    </section>
</body>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script>
	
	let user = $('#user').text().trim().split("|")[0].trim();
	
	if(user == "admin"){
		$('#answer').hide();
		
	}
	
	let check = "${qnACheck}";
	
	if(check == "1"){
		$('#answer').val("답변완료");
		$('#answer').attr("disabled","disabled")
	}
	

	
	
	</script>
    </html>