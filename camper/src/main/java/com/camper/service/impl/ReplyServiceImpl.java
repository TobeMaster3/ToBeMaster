package com.camper.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camper.mapper.ReplyMapper;
import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;
import com.camper.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	public ReplyMapper mapper;

	@Override
	public int callMaxRno() {
		return mapper.replyMaxrno();
	}

	@Override
	public ReplyTO writeReply( ReplyTO to ) throws Exception {
		ReplyTO result = new ReplyTO();
		try {
			// 모댓글 작성
			mapper.writeReply( to );
		} catch(Exception e) {
			throw new Exception("[댓글작성 에러발생]" + e.getMessage(), e);
		}
		return result;
	}

	@Override
	public void checkReply( ReplyTO to ) {
		mapper.checkReply( to );
	}

	@Override
	public void togetherDelete( ReplyTO to ) {
		mapper.togetherDelete( to );
		
	}

	@Override
	public void writeRereply( ReplyTO to ) {
		mapper.writeRereply( to );
	}

	@Override
	public void hitUpReply( BoardTO to ) {
		mapper.upReply( to );
	}

	@Override
	public List<ReplyTO> replyList(ReplyTO to) {
		return mapper.replyList( to );
	}

	@Override
	public BoardTO countChangeReply(BoardTO to) {
		return mapper.countReply( to );
	}

	@Override
	public int countOnlyRereply(ReplyTO to) {
		return mapper.countOnlyRereply( to );
	}

	@Override
	public void deleteNotHaveRereply(ReplyTO to) {
		mapper.deleteNotHaveRereply( to );
	}

	@Override
	public void deleteHaveRereply(ReplyTO to) {
		mapper.deleteHaveRereply( to );
	}

	@Override
	public void deleteRereply(ReplyTO to) {
		mapper.deleteRereply( to );
	}

	@Override
	public void hitDownReply(ReplyTO to) {
		mapper.downReply( to );
	}

	@Override
	public int selectReplyCount(ReplyTO to) {
		return mapper.selectReplyCount(to);
	}

	@Override
	public void deleteReply(ReplyTO to) throws Exception {
		try {
			// 모댓글 답글 조회
			int reReplyCnt = mapper.countRereply( to );
			
			// 모댓글 삭제처리 
			if(reReplyCnt > 0) {
				mapper.deleteHaveRereply( to );
			} else {
				mapper.deleteNotHaveRereply( to );
			}
		} catch(Exception e) {
			throw new Exception("[모댓글삭제 에러발생]" + e.getMessage(), e);
		}
	}

}
