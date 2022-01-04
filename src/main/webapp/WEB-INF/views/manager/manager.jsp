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
 	<link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${path}/resources/js/bootstrap/bootstrap.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js" charset="UTF-8"></script>
	<script src="${path}/resources/js/address.js" charset="UTF-8"></script>
	<script src="${path}/resources/js/add.js" charset="UTF-8"></script>
</head>
<body>
  
        <div id="contents">
         <form action="./accomAction" method="POST" id="accom" enctype="multipart/form-data">

          <table>
          
            <tr class="table_t">
              <td class="t">숙소명</td>
              <td><input type="text" id="accom_name" name="accom_name"></input></td>
            </tr>
            <tr class="table_w">
              <td class="w">주소</td>
              <td><input class="area" id="addr1" name="addr1" readonly></input>
              	  <button type="button" data-toggle="modal" data-target="#addrModal">주소검색</button>
              </td>
              
              <td>
				<input type="text" id="addr2" name="addr2" placeholder="주소" readonly>
			  </td>
              
            </tr>
            <tr class="table_c">
              <td class="c">이미지</td>
              <td><input class="area_c" type="file" id="file" placeholder="첨부파일" name="file"></input></td>
            </tr>
            <tr class="table_d">
              <td class="d">텍스트</td>
              <td><input type="text" class="area" id="accom_text" name="accom_text"></input></td>
            </tr>
            
        </table>
        <button type="submit">등록하기</button>

         </form>
        </div>

<!-- 주소 검색 모달 -->
<div id="addrModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">주소 검색</h4>
			</div>
			<div class="modal-body">
				<div class="row" id="postcodify"></div>
				
				<script>
					$('#postcodify').postcodify({
						insertPostcode5  : '#entry_postcode5',
						insertAddress    : '#entry_address',
						insertExtraInfo : '#entry_extra_info',
						userFullJibeon   : true,
						mapLinkProvider  : 'google',
						ready : function() {
							$('#postcodify div.postcode_search_status.empty').hide();
						},
						beforeSearch : function() {
							$('#entry_box').hide();
						},
						afterSearch : function(selectedEntry) {
							$('#postcodify div.postcode_search_result').remove();
							$('#postcodify div.postcode_search_status.summary').hide();
							$('#entry_box').show();
							$('#entry_details').focus();
						}
					});
				</script>
				
				<div>
					<p>
						<label for="entry_postcode5">우편번호</label>
						<input type="text" class="form-control" id="entry_postcode5" readonly>
					</p>
					<p>
						<label for="entry_address">도로명주소</label>
						<input type="text" class="form-control" id="entry_address" readonly>
					</p>
					<p>
						<label for="entry_extra_info">지명주소</label>
						<input type="text" class="form-control" id="entry_extra_info" readonly>
					</p>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="getAddrBtn" class="btn btn-primary" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- 주소 검색 모달 종료 -->
</body>
</html>