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
         <form action="./roomAction" method="POST" id="room" enctype="multipart/form-data">

          <table>
            <tr class="table_t">
              <td class="t">숙소명</td>
              <td><input type="text" id="accom_name" name="accom_name"></input></td>
            </tr>
            <tr class="table_t">
              <td class="t">룸명</td>
              <td><input type="text" id="room_name" name="room_name"></input></td>
            </tr>
            <tr class="table_w">
              <td class="w">룸번호</td>
              <td><input type="text" id="room_num" name="room_num"></input></td>
            </tr>
            <tr class="table_c">
              <td class="c">이미지</td>
              <td><input class="area_c" type="file" id="file" placeholder="첨부파일" name="file"></input></td>
            </tr>
            <tr class="table_c">
              <td class="c">가격</td>
              <td><input type="text" id="room_price" name="room_price"></input></td>
            </tr>
           
            
        </table>
        <button type="submit">등록하기</button>

         </form>
        </div>

</body>
</html>