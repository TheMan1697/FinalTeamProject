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
import works.yermi.domain.PensionVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PensionMapperTests {
	@Setter @Autowired
	private PensionMapper mapper;
	
	@Test
	public void testExist() {
		assertNotNull(mapper);
	}
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(log::info);
	}
	
	@Test
	public void testRead() {
		PensionVO result = mapper.read(67088L);
		log.info(result);
	}
	
	@Test
	public void testInsert() {
		PensionVO vo = new PensionVO();
		vo.setPensionid(999999L);
		vo.setName("매퍼테스트");
		vo.setUserid("asdfasdfs");
		vo.setCategory(1);
		vo.setAddress("주소");
		vo.setEnabled(true);
		int exp = 1;
		int result = mapper.insert(vo);
		
		assertEquals("추가", result, exp);
	}
	
	@Test
	public void testInsertpensionfilter() {
		PensionVO vo = new PensionVO();
		vo.setPensionid(999999L);
		vo.setName("매퍼테스트");
		vo.setUserid("asdfasdfs");
		vo.setCategory(1);
		vo.setAddress("주소");
		vo.setEnabled(true);
		vo.setAirConditioner(true);
		vo.setBbq(true);
		vo.setBathTub(true);
		vo.setCampfire(true);
		int exp = 1;
		int result = mapper.insertpensionfilter(vo);
		log.info(vo);
		assertEquals("추가(필터적용)", result, exp);
	}
	
	@Test
	public void testUpdate() {
		PensionVO vo = new PensionVO();
		vo.setPensionid(999999L);
		vo.setUserid("아오");
		vo.setName("수정수정");
		vo.setCategory(2);
		vo.setBbq(true);
		vo.setConvenienceStore(true);
		
		int exp = 1;
		
		int result = mapper.update(vo);
		
		assertEquals("수정", result, exp);
		
	}
	
	@Test
	public void testDelete() {
		Long pensionid = 999999L;
		
		int exp = 1;
		
		int result = mapper.delete(pensionid);
		
		assertEquals("삭제", result, exp);
	}
}
