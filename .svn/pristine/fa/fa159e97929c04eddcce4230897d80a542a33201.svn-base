package works.yermi.mapper;

import static org.junit.Assert.assertNotNull;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import works.yermi.domain.ReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReplyMapperTests {
	@Autowired @Setter
	private ReplyMapper mapper;
	
	@Test
	public void testExist() {
		assertNotNull(mapper);
		log.info("mapper : " + mapper);
	}
	
	//	ReplyVO read(long rno);
	@Test
	public void testRead() { // 특정 댓글 번호로 댓글 조회
		ReplyVO vo = mapper.read(32L);
		log.info(vo);
	}

	//	public List<ReplyVO> getList();
	@Test
	public void testGetList() { // 특정 펜션의 댓글목록
		ReplyVO vo = new ReplyVO();
		vo.setPensionid("67180");
		mapper.getList(vo.getPensionid()).forEach(log::info);
	}
	
	//	ReplyVO get(String userid); 
	@Test
	public void testGet(){ // 특정 아이디 사용자가 쓴 댓글목록
		ReplyVO vo = new ReplyVO();
		vo.setNickName("id1");
		mapper.get(vo.getNickName()).forEach(log::info);
	}
	
	//	int insert(ReplyVO vo);
	@Test
	public void testInsert() {
		ReplyVO vo = new ReplyVO();
		vo.setPensionid("70384");
		vo.setStarRate(5);
		vo.setNickName("id1");
		vo.setContent("겁나게 좋아유~");
		vo.setTitle("아따아따 좋은곳");
		log.info(vo);
		
	//	mapper.getList(vo);
		mapper.insert(vo);
		log.info(vo);
	}

	//	int insertSelectKey(ReplyVO vo);
	@Test
	public void testInsertSelectKey() {
		ReplyVO vo = new ReplyVO();
		vo.setPensionid("70384");
		vo.setStarRate(5);
		vo.setNickName("test");
		vo.setContent("겁나게 좋아유~22");
		vo.setTitle("아따아따 좋은곳 SELECT KEY~");
		log.info(vo);
//		mapper.getList(vo);
		mapper.insertSelectKey(vo);
		log.info(vo);
	}

	//	int delete(long rno);
	@Test
	public void testDelete() {
		mapper.delete(29L);
	}
	

	//	int update(ReplyVO replyVO);
	@Test
	public void testUpdate() {
		ReplyVO vo = mapper.read(57L);
		vo.setTitle("수정테스트");
		vo.setContent("수정 내용");
		vo.setStarRate(4);
		
		mapper.update(vo);
		
	}
	
}
