<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function termsCheck(){
			$("input:checkbox[id='terms']").prop("checked", true);
			$("#checkTerms").modal("hide");
		}
</script>

</head>
<body>
	<div class="modal fade" id="checkTerms" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<div class="row">
						<div class="col-md-12">
							<div class="white-box">
								<table border="0" cellspacing="0" cellpadding="2">
									<tr>
										<td>가입약관 및 개인정보 보호정책을 설정합니다.</td>
									</tr>
								</table>
								<br> &nbsp;&nbsp;
								<class="tit_sub">
								<i class="fa fa-genderless" aria-hidden="true"></i>가입약관 <br>
								<table class="w-100 rounded" width="100%" border="0" cellspacing="0" cellpadding="0">
									<form name="frm" action="" method="post" enctype="multipart/form-data" onSubmit="return inputCheck(this) ;">
										<input type="hidden" name="tmp">
										<input type="hidden" name="mode" value="config">
										<input type="hidden" name="idx" value="">
										<tr>
											<td width="100%" class="t_value" colspan="3">
											<textarea name="agreement" rows="20" cols="100" class="w-100 rounded" style="resize:none">
									제 1조 (목적) 
												이 약관은 전기통신 사업법 및 동 법 시행령에 의하여 OOO(이하 "회사" 라 합니다.)가 제공하는 인터넷 홈페이지 서비스 (이하 "서비스" 라 합니다.)의 이용조건 및 절차에 관한 사항, 회사와 이용자의 권리와 의무 및 책임사항을 규정함을 목적으로 합니다.
												 
													제 2조 (약관의 효력과 개정) 
												1. 이 약관은 전기통신사업법 제 31 조, 동 법 시행규칙 제 21조의 2에 따라 공시절차를 거친 후 홈페이지를 통하여 이를 공지하거나 전자우편 기타의 방법으로 이용자에게 통지함으로써 효력을 발생합니다.
												2. 회사는 본 약관을 사전 고지 없이 개정할 수 있으며, 개정된 약관은 제9조에 정한 방법으로 공지합니다. 회원은 개정된 약관에 동의하지 아니하는 경우 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 계속 사용의 경우는 약관 개정에 대한 동의로 간주됩니다. 개정된 약관은 공지와 동시에 그 효력이 발생됩니다.
												  
													제 3조 (약관이외의 준칙) 
												이 약관에 명시되어 있지 않은 사항은 전기통신 기본법, 전기통신 사업법, 기타 관련법령의 규정에 따릅니다.
												 
													제 4조 (용어의 정의) 
												이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
												 
												1. 회원 : 서비스에 개인정보를 제공하여 회원등록을 한 자로서, 서비스의 정보를 지속적으로 제공받으며, 이용할 수 있는 자를 말합니다. 
												2. 이용자 : 본 약관에 따라 회사가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
												3. 아이디 (ID) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합을 말합니다.  
												4. 비밀번호 : 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합을 말합니다.  
												5. 전자우편 (E-mail) : 인터넷을 통한 우편입니다.  
												6. 해지 : 회사 또는 회원이 서비스 이용 이후 그 이용계약을 종료 시키는 의사표시를 말합니다.  
												7. 홈페이지 : 회사가 이용자에게 서비스를 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 이용자가 열람 및 이용할 수 있도록 설정한 가상의 서비스 공간을 말합니다.
												
												이 약관은 2022년 3월 15일부터 시행합니다.
 		             				 	</textarea>
 		             				 	</td>
									</tr>
										<table>
											<br> &nbsp;&nbsp;
											<class="tit_sub">
											<i class="fa fa-genderless" aria-hidden="true"></i>개인정보 <br>
											<tr>
												<td class="t_value" colspan="3">
												<textarea name="safeinfo" rows="20" cols="100" class="w-100 rounded" style="resize:none">
														※ 총 칙
														1. OOO는 "정보통신망이용촉진및정보보호등에관한법률"상의 개인정보보호 규정과 정보통신부가 제정한 "개인정보보호지침" 및 "개인정보의 기술적/관리적 보호조치 기준"을 준수하고 있습니다. 또한 OOO는 "개인정보보호정책"을  제정하여 회원들의 개인정보 보호를 위해 최선을 다하겠음을 선언합니다.
														2. OOO의 "개인정보보호정책"은 관련 법률 및 정부 지침의 변경과 OOO의 내부 방침 변경에 의해 변경될 수 있습 니다. OOO의 "개인정보보호방침"이 변경될 경우 변경사항은 OOO 홈페이지의 공지사항에  최소 7일간 게시됩니다. 
														
														※ 개인정보
														OOO는 귀하께서 OOO의 이용약관의 내용에 대해 "동의한다" 버튼 또는 "동의하지 않는다" 버튼을 클릭할 수 있는 절차를 마련하여, "동의한다" 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. 또한, 귀하께서 “동의한다” 버튼을 클릭하면 아래의 개인정보 수집 항목 중 “비밀번호”와 “주민등록번호”를 제외한 나머지 항목들은 OOO가 서비스
														를 이행하기 위해 외주업체에 제공하는 것에 대해 동의한 것으로 간주합니다.
														
														1. "개인정보"의 범위는 정보통신망이용촉진및정보보호등에관한법률에서 규정하는 내용에 따라, "생존하는 개인에 관한  정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해  정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함한다)"를 의미 합니다. 
														2. OOO는 이용자 확인, 대금결제, 이용 서비스의 소유자 확인, 개별회원에게 맞춤화된 서비스, 기타 부가서비스 등을 
														    위하여 회원들의 개인정보를 수집ㆍ이용 합니다. 수집하는 개인정보 항목에 따른 구체적인 수집목적 및 이용 목적은 
														    다음과 같습니다.
														-  성명, 아이디, 비밀번호, 주민등록번호/사업자등록번호 : 회원제 서비스 이용에 따른 본인 확인 절차에 이용, 
														-  이용 서비스의 소유자 확인
														-  이메일주소, 전화번호, 팩스번호 : 도메인 관리 규정에 따른 필수 정보 확보, 고지사항 전달, 불만처리 등을 위한 원활
														    한 의사 소통
														-  경로의 확보, 새로운 서비스 및 신상품이나 이벤트 정보 등의 안내
														-  은행정보, 신용카드 정보 : 유료정보 이용 및 구매에 대한 결제
														-  주소 : 도메인 정보조회 제공, 청구서 및 쇼핑몰 물품 배송에 대한 정확한 배송지 확인
														    쿠키 ( 아이디 ) : 쿠키 운영을 통해 방문자들의 아이디를 자동 분석하여 등급별 차등화된 가격 혜택 적용.
														    고객께서는 웹브라우저에서 옵션을 설정함으로써 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 
														    거부할 수도 있습니다. 그러나 쿠키의 저장을 거부할 경우 웹서비스 이용이 제한될 수 있습니다. 
														3. OOO은 회원 개인정보를 위탁관리하지 않습니다. 
														4. 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적 지, 정치적 성향 
														    및 범죄기록, 건강상태 및 성생활 등)는 요구하지 않습니다. 
														5. 개인정보의 보유 기간은 "회원이 OOO에 가입하는 순간부터 해지 신청 순간까지"입니다. OOO의 회원DB는 탈퇴
														    신청자의 개인정보가 탈퇴 즉시 삭제토록 되어 있습니다. 
														    단, 수집목적 및 제공받은 목적이 달성된 경우에도 법률의 규정에 의하여 보존할 필요성이 있는 경우에는 법률의 
														    규정에 따라 고객의 개인정보를 보유할 수 있습니다.
														- 계약 또는 청약철회 등에 관한 기록 : 5년
														- 대금결제 및 재화등의 공급에 관한 기록 : 5년
														- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 등
												</textarea>
											</tr>
										</table>
										</td>
										</tr>
								</table>
							</div>
							<div class="modal-footer border-top-0 m-auto justify-content-lg-between justify-content-center">
								<button class="btn btn-transparent m-auto" type="button" name="findBtn" id="findBtn" onclick="termsCheck()">확인</button>
							</div>
						</div>
					</div>
				</div>
</body>
</html>