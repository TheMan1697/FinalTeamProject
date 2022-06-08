package works.yermi.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

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
public class ReplyServiceTests {
	@Setter @Autowired
	private ReplyService service;
	
	@Test
	public void testExist() {
		assertNotNull(service);
	}
	
	//	ReplyVO get(Long rno);
	@Test
	public void testGet() { // 특정목록
		ReplyVO vo = service.get(60L);
		log.info(vo);
	}
	
	//	List<ReplyVO> getList();
	@Test
	public void testGetList() { // 전체목록
		ReplyVO vo = new ReplyVO();
		vo.setPensionid("67180");
		service.getList(vo.getPensionid()).forEach(log::info);
	}
	
	//	List<ReplyVO> getListByUser(String userid);
	@Test
	public void testGetListByUser() { // 특정 id로 댓글조회
		ReplyVO vo = new ReplyVO();
		vo.setNickName("id1");
		service.getListByUser(vo.getNickName()).forEach(log::info);
	}
	
	
	//	int register(ReplyVO vo);
	@Test
	public void testRegister() { // 댓글 등록
		ReplyVO vo = new ReplyVO();
		
		vo.setTitle("service test");
		vo.setContent("service content");
		vo.setNickName("id1");
		vo.setStarRate(5);
		vo.setPensionid("57329");
		log.info(vo);
		
		int exp = 1;
		int result = service.register(vo);
		
		assertEquals("게시글추가", exp, result);
	}
	
	//	int modify(ReplyVO vo);
	@Test
	public void testModify() { // 댓글 수정
		ReplyVO vo = service.get(60L);
		log.info(vo);
		vo.setTitle("service modify title");
		log.info(vo);
		
		boolean exp = true;
		boolean result = service.modify(vo);
		
		assertEquals("게시글 수정", exp, result);
		log.info(vo);
		
	}
	
	//	int remove(Long rno);
	@Test
	public void testRemove() {
		service.remove(60L);
	}
}
