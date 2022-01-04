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
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
<div id="contents">
         <form action="./updateqna" method="POST" id="qna">
         <input type="hidden" name="qna_id" value="${map.qna1.qna_id}"/>
          <table>
        		<thead>
					<tr>
						<th>글쓰기</th>
					</tr>
				</thead>
            <tr class="table_t">
              <td class="t">제목</td>
              <td><input type="text" id="qna_tit" name="qna_tit" value="${map.qna1.qna_tit}"></input></td>
            </tr>
            <tr class="table_w">
              <td class="w">내용</td>
              	  <td><input type="text" id="qna_con" name="qna_con" value="${map.qna1.qna_con}"></input></td>
            </tr>
            
        </table>
     	  <input type="submit" value="수정하기">

 		</form>
        </div>
</body>
</html>