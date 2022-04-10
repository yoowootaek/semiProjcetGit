package com.javaclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javaclass.dao.ReplyDAO;
import com.javaclass.domain.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	//댓글 조회
	@Override
	public List<ReplyVO> readReply(int reply_rno) throws Exception {
		return dao.readReply(reply_rno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writdReply(vo);
		
	}

	//댓글 수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
		
	}

	//댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		dao.deleteReply(vo);
		
	}

	//선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int reply_rno) throws Exception {
		return dao.selectReply(reply_rno);
	}

}
