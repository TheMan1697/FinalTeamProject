package works.yermi.mapper;

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
public class RoomMapperTests {
	@Autowired @Setter
	private RoomMapper mapper;
	
	@Test
	public void testExist(){
		assertNotNull(mapper);
		log.info(mapper);
	}
	
	@Test
	public void testGetList() {
		RoomVO vo= new RoomVO();
		vo.setPensionid("999999");
		mapper.getList(vo.getPensionid()).forEach(log::info);
	}
	
	@Test
	public void testRead() {
		RoomVO vo = mapper.read(1111L);
		log.info(vo);
	}
	
	@Test
	public void testInsert() {
		RoomVO vo = new RoomVO();
		vo.setPensionid("999999");
		vo.setRoomNum(1111L);
		vo.setStartTime("22/05/05");
		vo.setDeadline("22/06/21");
		vo.setReservationStatus(true);
		vo.setPrice(9999L);
		vo.setEnabled(true);
		vo.setRoomName("비비빅");
		int exp = 1;
		int result = mapper.insert(vo);
		
		assertEquals("추가", result, exp);
	}
	
	@Test
	public void testUpdate() {
		RoomVO vo = new RoomVO();
		vo.setPensionid("999999");
		vo.setRoomNum(1111L);
		vo.setStartTime("22/05/05");
		vo.setDeadline("22/06/21");
		vo.setReservationStatus(true);
		vo.setPrice(99999L);
		vo.setEnabled(true);
		vo.setRoomName("메로나");
		
		int exp = 1;
		
		int result = mapper.update(vo);
		
		assertEquals("수정", result, exp);
		
	}
	@Test
	public void testDelete() {
		Long roomNum=1111L;
		
		int exp = 1;
		
		int result = mapper.delete(roomNum);
		
		assertEquals("삭제", result, exp);
	}

}
