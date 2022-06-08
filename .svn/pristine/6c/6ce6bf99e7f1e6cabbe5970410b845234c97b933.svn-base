package works.yermi.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import works.yermi.domain.RoomVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class RoomServiceTests {
	@Setter @Autowired
	private RoomService service;
	
	@Test
	public void testExist() {
		assertNotNull(service);
	}
	
	@Test
	public void testGet() { 
		RoomVO vo = service.get(1111L);
		log.info(vo);
	}
	
	@Test
	public void testGetList() {
		RoomVO vo = new RoomVO();
		vo.setPensionid("777777");
		service.getList(vo.getPensionid()).forEach(log::info);
	}
	
	@Test
	public void testRegister() { 
		RoomVO vo = new RoomVO();
		
		vo.setPensionid("777777");
		vo.setRoomNum(1111L);
		vo.setStartTime("22/05/05");
		vo.setDeadline("22/06/21");
		vo.setReservationStatus(true);
		vo.setPrice(9999L);
		vo.setEnabled(true);
		vo.setRoomName("비비빅");
		
		log.info(vo);
		
		int exp = 1;
		int result = service.register(vo);
		
		assertEquals("숙소 추가", exp, result);
	}
	
	@Test
	public void testModify() { 
		RoomVO vo = service.get(1111L);
		log.info(vo);
		vo.setRoomName("메로나");
		vo.setPrice(7777L);
		log.info(vo);
		
		boolean exp = true;
		boolean result = service.modify(vo);
		
		assertEquals("숙소 정보 수정", exp, result);
		log.info(vo);
		
	}
	
	@Test
	public void testRemove() {
		Long rooomNum = 1111L;
		
		log.info(rooomNum);
		
		boolean exp = true;
		
		boolean result = service.remove(rooomNum);
		
		assertEquals("삭제", result, exp);
	}
}