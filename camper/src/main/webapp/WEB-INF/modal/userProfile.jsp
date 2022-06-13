<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	function userProfile(nick){
	    $('.modal-body h6').text(nick);
		$.ajax({
			url: '/userProfile.do',
			type: 'POST',
			data: {"nick": nick},
			success: function( data ) {
				console.log(data);
				
				const address = data['address'].split(" ");
				
				$('.modal-body .age').text(data['birth'].substring(0,4)+'년 생');
				$('.modal-body .address').text(address[0] + '\t'+ address[1]);
				$('.modal-body .greet').text(data['greet']);
				
				if(data['profile'] == null || data['profile'] == '') {
					$("#profileImg").attr("src", "../../images/user/user.png");
				}  else {
					$("#profileImg").attr("src", data['profile']);
				}
				
			},
			error: function() {
				console.log( "ajax 에러" )
			}
		})
	}
</script>
</head>
<body>
	<div class="modal fade" id="userprofile" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<!-- User Profile widget -->
						<img class="rounded-circle img-fluid p-5 mb-4" src="" alt="profile image" id="profileImg" style="height:350px; width:350px">
						<h6 style="font-size:25px"></h6>
						<p class="age  mb-0" style="font-size:18px"></p>
						<p class="address" style="font-size:18px"></p>
						<p class="greet" style="font-size:20px; color:#666"></p>

				</div>
				<div class="modal-footer border-top-0 ml-auto mr-auto mb-3 justify-content-lg-between justify-content-center">
						<ul class="list-inline">
							<li class="list-inline-item"><a href="" class="btn btn-contact d-inline-block  btn-primary px-lg-4 my-1 px-md-3">1 : 1 채팅</a></li>
							<li class="list-inline-item"><a href="" class="btn btn-offer d-inline-block btn-primary ml-n1 my-1 px-lg-4 px-md-3">팔로우 하기</a></li>
						</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>