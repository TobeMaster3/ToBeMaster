<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach var="tmp" items="${list }">
		<div class="list-group chat_list_box${tmp.room } chat_list_box rounded-0">
			<div type="button" class="chat_list" room="${tmp.room }" other-nick="${tmp.other_nick }">
				<a class="list-group-item list-group-item-action active text-white rounded-0">
					<div class="media"><img src="${sessionScope.profile }" alt="user" width="50" height="50" class="rounded-circle">
						<div class="media-body ml-4">
							<div class="d-flex align-items-center justify-content-between mb-1 chat_ib">
								<h6 class="mb-0">${tmp.other_nick }</h6><small class="small font-weight-bold chat_date">${tmp.send_time }</small>
							</div>
							<p class="font-italic mb-0 text-small">${tmp.content }</p>
						</div>
					</div>
				</a>
			</div>
		</div>
</c:forEach>



