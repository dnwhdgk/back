<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
 	<link rel="stylesheet" href="${path}/resources/css/manager/manager.css" />
	<link rel="stylesheet" href="${path}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${path}/resources/css/custom.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${path}/resources/js/bootstrap.js"></script>
</head>
<body>
<div id="contents">
         
		<form method="POST" action="qnaAction.jsp">
          <table>
        		<thead>
					<tr>
						<th>글내용</th>
					</tr>
				</thead>
            <tr class="table_t">
              <td class="t">제목</td>
              <td>${map.qna1.qna_tit}</td>
            </tr>
            <tr class="table_w">
              <td class="w">내용</td>
              	  <td>${map.qna1.qna_con}</td>
            </tr>
            
        </table>
                <a href="${path}/update?qna_id=${map.qna1.qna_id}" role="button">수정하기</a>
                <a href="${path}/deleteqna?qna_id=${map.qna1.qna_id}" role="button">삭제하기</a>
     </form>
		<table class="table table-striped" style="text-align: center; border: 1px solid #bbbbbb;">
			<thead>
				<tr>
					<td colspan="4">댓글</td>
				</tr>
			</thead>
			<tbody id="replyBody">
				<c:forEach var="reply" items="${map.replyList }">
				<tr>
					<td width="50%">${reply.re_con }</td>
					<td width="20%">${reply.re_date }</td>
				</tr>
				</c:forEach>
			</tbody>
			
		</table>
       
        </div>
</body>
</html>