package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;

@Mapper
public interface ReplyMapper {
	public int replyMaxrno();
	public int writeReply( ReplyTO to );
	public void checkReply( ReplyTO to );
	public void togetherDelete( ReplyTO to );
	public void writeRereply( ReplyTO to );
	public void upReply( BoardTO to );
	public List<ReplyTO> replyList( ReplyTO to );
	public BoardTO countReply( BoardTO to );
	public int countRereply( ReplyTO to );
	public int countOnlyRereply( ReplyTO to );
	public void deleteNotHaveRereply( ReplyTO to );
	public void deleteHaveRereply( ReplyTO to );
	public void deleteRereply( ReplyTO to );
	public void downReply( ReplyTO to );
	public int selectReplyCount(ReplyTO to);
	
}
