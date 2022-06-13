<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach var="tmp" items="${clist }">
	<c:choose>
		<c:when test="${sessionScope.nick ne tmp.send_nick }">
		<!-- 받은 메세지 -->
			<div class="media w-50 mb-3 incoming_msg">
				<div class="incoming_msg_img">
				<a href="#">${tmp.send_nick }
				<img src="../../images/${tmp.profile }" alt="user" width="50" height="50" class="rounded-circle">
				</a>
				</div>
					<div class="media-body ml-3 received_msg">
						<div class="bg-light rounded py-2 px-3 mb-2 received_withd_msg">
							<p class="text-small mb-0 text-muted">${tmp.content }</p>
						</div>
						<p class="small text-muted time_date"> ${tmp.send_time }</p>
					</div>
				</div>
		</c:when>
		
		<c:otherwise>
		<!-- 보낸 메세지 -->
		<div class="media w-50 ml-auto mb-3 outgoing_msg">
				<div class="media-body sent_msg">
					<div class="bg-primary rounded py-2 px-3 mb-2">
						<p class="text-small mb-0 text-white">${tmp.content }</p>
					</div>
					<p class="small text-muted time_date">${tmp.send_time }</p>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</c:forEach>

