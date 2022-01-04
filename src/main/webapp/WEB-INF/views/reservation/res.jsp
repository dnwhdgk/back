<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/manager/manager.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#startDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yymmdd",
									maxDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
										$("#endDate").datepicker("option",
												"minDate", selectedDate);
									}

								});
				$("#endDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yymmdd",
									maxDate : 0, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										// 종료일(endDate) datepicker가 닫힐때
										// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
										$("#startDate").datepicker("option",
												"maxDate", selectedDate);
									}

								});
				
				
				
				$('#res').submit(function(e) {
					event.preventDefault();
					var IMP = window.IMP; // 생략 가능
					IMP.init("imp09773685"); // 예: imp00000000
					
					 IMP.request_pay({ // param
				          pg: "html5_inicis",
				          pay_method: "card",
				          merchant_uid: "1612411-0000011",
				          name: "야놀자 예약",
				          amount: 1000000,
				          buyer_email: "gildong@gmail.com",
				          buyer_name: "홍길동",
				          buyer_tel: "010-4242-4242",
				          buyer_addr: "서울특별시 강남구 신사동",
				          buyer_postcode: "01181"
				      }, 
				      function (rsp) { // callback
				    	  if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
				    	       alert("결제 성공");
				    	       $("#res").submit();
				    	  } else {
				    	       alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
				    	  }
				      });
				    });
				
				
				
				
			});
</script>

</head>
<body>
	<div id="contents">
		<form action="./resAction" method="POST" id="res">
			<input type="hidden" id="accom_name" name="accom_name"
				value="${accom_name}" /> <input type="hidden" id="room_id"
				name="room_id" value="${room_id}" />

			<table>
				<thead>
					<tr>
						<th>예약하기</th>
					</tr>
				</thead>
				<tr class="table_t">
					<td class="t">방이름</td>
					<td>${map.room.room_name}</td>
				</tr>
				<tr class="table_t">
					<td class="t">호실</td>
					<td>${map.room.room_num}</td>
				</tr>
				<tr class="table_t">
					<td class="t">기간</td>
					<td><input type="text" id="startDate" name="resev_st" /> <input
						type="text" id="endDate" name="resev_end" /></td>
				</tr>
				<tr class="table_t">
					<td class="t">가격</td>
					<td>${map.room.room_price}</td>
				</tr>

			</table>
			<button type="submit">예약하기</button>

		</form>
	</div>
</body>
</html>