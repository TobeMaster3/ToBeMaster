package com.camper.service;

import java.util.List;

import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;

public interface ReplyService {
	public int callMaxRno();
	public ReplyTO writeReply( ReplyTO to ) throws Exception;
	public void checkReply( ReplyTO to );
	public void togetherDelete( ReplyTO to );
	public void writeRereply( ReplyTO to );
	public void hitUpReply( BoardTO to );
	public List<ReplyTO> replyList( ReplyTO to );
	public BoardTO countChangeReply( BoardTO to );
	public int countOnlyRereply( ReplyTO to );
	public void deleteNotHaveRereply( ReplyTO to );
	public void deleteHaveRereply( ReplyTO to );
	public void deleteRereply( ReplyTO to );
	public void hitDownReply( ReplyTO to );
	public int selectReplyCount(ReplyTO to);
	public void deleteReply(ReplyTO to) throws Exception;
}
