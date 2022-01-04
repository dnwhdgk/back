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
    <link rel="stylesheet" href="${path}/resources/css/mypage/qa.css" />
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="${path}/resources/js/mypage.js"></script>
    <script src="${path}/resources/js/jquery/jquery.easeScroll.js"></script>
</head>
<body>
  
      
    <div id="wrap">
      <div class="nav"></div>
      <header id="header">

        </header>
        <div id="contents">
          <table>
              <tr class="table_t">
                  <th>No.</th>
                  <th>작성자</th>
                  <th>제목</th>
                  <th>작성일</th>
              </tr>
               <c:forEach var="getQna" items="${list}">
	              <tr class="table_c">
	                  <td>${getQna.qna_id}</td>
	                  <td>${getQna.user_id}</td>
	                  <td><a href="${path}/man_qa_v?qna_id=${getQna.qna_id}">${getQna.qna_tit}</a></td>
	                  <td>${getQna.qna_date}</td>
	              </tr>
              </c:forEach>
          </table>
      </div>
     </div>
</body>
</html>