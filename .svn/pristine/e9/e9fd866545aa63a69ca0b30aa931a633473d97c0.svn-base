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
import lombok.extern.log4j.Log4j;import works.yermi.domain.CriteriaPension;
import works.yermi.domain.PensionVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PensionServiceTests {
	@Setter @Autowired
	private PensionService service;
	
	@Test
	public void testExist() {
		assertNotNull(service);
	}
	
	@Test
	public void testGetList() {
		CriteriaPension cri = new CriteriaPension();
		List<PensionVO> result = service.getList(cri);
		assertNotNull(result);
		result.forEach(log::info);
	}
	
	@Test
	public void testGet() {
		PensionVO result = service.get(777777L);
		assertNotNull(result);
		log.info(result);
	}
	
	@Test
	public void testReigster() {
		PensionVO vo = new PensionVO();
		vo.setPensionid(777777L);
		vo.setName("싸비스테스트");
		vo.setUserid("혹시?");
		vo.setCategory(2);
		vo.setEnabled(true);
		vo.setFootVolleyballCourt(true);
		vo.setConvenienceStore(true);
		vo.setAirConditioner(true);
		
		log.info(vo);
		
		int exp = 1;
		
		int result = service.register(vo);
		
		assertEquals("펜션추가", exp, result);
		
		log.info(vo);
	}
	
	@Test
	public void testModify() {
		PensionVO vo = service.get(777777L);
		log.info(vo);
		vo.setCategory(1);
		vo.setAirConditioner(false);
		vo.setBathTub(true);
		vo.setCooking(true);
		
		boolean exp = true;
		
		boolean result = service.modify(vo);
		
		assertEquals("게시글 수정 ", result, exp);
		
		log.info(vo);
		
	}
	
	@Test
	public void testRemove() {
		Long pensionid = 777777L;
		
		log.info(pensionid);
		
		boolean exp = true;
		
		boolean result = service.remove(pensionid);
		
		assertEquals("삭제", result, exp);
	}
}
