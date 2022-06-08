package works.yermi.mapper;

import java.util.List;

import works.yermi.domain.ReplyVO;

public interface ReplyMapper {
	
	List<ReplyVO> getList(String pensionid); // 펜션에 있는 모든 댓글
	
	int insert(ReplyVO vo); // 댓글 삽입
	
	int insertSelectKey(ReplyVO vo); // 댓글 번호 즉각 반영
	
	ReplyVO read(Long rno); // 특정 댓글 읽기
	
	List<ReplyVO> get(String userid); // 아이디사용자가 쓴 댓글 모두
	
	int delete(Long rno);
	
	int update(ReplyVO replyVO);
	
}
