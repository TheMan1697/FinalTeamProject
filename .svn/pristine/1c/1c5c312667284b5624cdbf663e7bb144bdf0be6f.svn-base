package works.yermi.mapper;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import works.yermi.domain.AuthVO;
import works.yermi.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})

@Log4j
public class MemberMapperTests {
	@Setter @Autowired
	private PasswordEncoder encoder;
	@Setter @Autowired 
	private MemberMapper mapper;
	
	@Test // 회원 정보 조회
	public void testRead(){
		log.info(mapper.read("id1"));
	}

	// <회원가입>
	@Test // 회원 생성
	public void testInsertMember(){
		MemberVO vo = new MemberVO();
		vo.setUserId("id1");
		vo.setPw(encoder.encode("1234"));
		vo.setEmail("sample@yermi.works");
		vo.setPhone("010-0000-0000");
		vo.setEmd("읍면동");
		vo.setRoadAddr("도로명주소");
		vo.setAddrDetail("상세주소");
		vo.setZipNo("우편no");
		vo.setRoadFullAddr("도로명주소 전체");
		vo.setJibunAddr("지번");
		vo.setSi("시");
		vo.setName("가입테스트");
		vo.setNickName("가입테스트닉");
		
		log.info(vo);
		mapper.insertMember(vo);
		
//		String[] memberArr = {"이대석", "김예찬", "류윤정", "김동엽", "김상현", "김경보",
//				"황규웅", "김태윤", "김승종", "이나현", "김치형", "차민지", "이연주", "박상근", "이강민"};
//		String[] memberArr2 = {"달래99", "주유중임", "초록색나팔꽃", "NKB79", "동글이85",
//				"수경리대섴", "김포마우스", "보리캔디", "서계서원병풍", "건강지키자",
//				"홍대한치오징어", "김돌게장", "셋상남자", "영원한레인", "양퓨퓨",
//				"hhanhee", "예르미티챠", "tnswlsdldia", "가냘픈만두", "쉰셋병장",
//				"윤댕댕", "송유제니", "친숙한흡혈동물", "난이쁜다행", "뿌링클클끌",
//				"쌍문동꿀단지", "몽땅2", "정댕쥐", "an9882", "inadang",
//				"오송강", "10604445", "신난다용", "시크릿하고", "김서영14",
//				"석잉이잉", "일산베어스s", "꼬마야놀자", "칠구와칠칠이", "얄릴로",
//				"겸손한투계", "열여섯째포탑", "편안한브루스", "bibibik", "태용씨",
//				"꿈꾸는아지", "chshk", "광적인화상", " 찐득한암랑", "anadao"};
//		IntStream.rangeClosed(1, 50).forEach(r -> {
//			MemberVO vo = new MemberVO();
//			vo.setUserId("user" + r);
//			vo.setNickName(memberArr2[r-1]);
//			vo.setName(memberArr[(int) (Math.random() * memberArr.length)]);
//			vo.setPw(encoder.encode("1234"));
//			mapper.insertMember(vo);
//		});
	}

	@Test // 권한 생성
	public void testInsertAuth(){
		AuthVO vo = new AuthVO();
		
		vo.setAuth("ROLE_MEMBER");
//		vo.setAuth("ROLE_MANAGER");
//		vo.setAuth("ROLE_ADMIN");
		vo.setUserId("id test");
		mapper.insertAuth(vo);
//		
		
//		IntStream.range(1, 51).forEach(r -> {
//			AuthVO vo = new AuthVO();
//			vo.setUserId("user" + r);
//			vo.setAuth("ROLE_MEMBER");
//			mapper.insertAuth(vo);
//		});
		
	}
	
	// <회원정보수정>
	@Test // 회원 수정
	public void testUpdateMember(){
		MemberVO vo = new MemberVO();
		vo.setPw(encoder.encode("1234"));
		vo.setEmail("sample@yermi.works");
		vo.setPhone("010-0000-0000");

		vo.setPoint(1);
		
		vo.setEmd("읍면동");
		vo.setRoadAddr("도로명주소");
		vo.setAddrDetail("상세주소");
		vo.setZipNo("우편no");
		vo.setRoadFullAddr("도로명주소 전체");
		vo.setJibunAddr("지번");
		vo.setSi("시");
		vo.setName("관리자2");
		vo.setNickName("관리자닉2");
		
		vo.setUserId("id1");

		mapper.updateMember(vo);
		log.info(vo);
	}

	@Test // 권한 수정
	public void testUpdateAuth(){
		AuthVO vo = new AuthVO();
		vo.setAuth("ROLE_MEMBER");
//		vo.setAuth("ROLE_MANAGER");
//		vo.setAuth("ROLE_ADMIN");
		
		int result = mapper.updateAuth(vo);
		
		log.info(result);
		log.info(vo);
	}
	
	// <회원탈퇴>
	@Test // 회원 삭제
	public void testDeleteMember(){
		String userId = "id9";
		mapper.deleteMember(userId);
	}

	@Test // 권한 삭제
	public void testDeleteAuth(){
		mapper.deleteAuth("id9");
	}
	
	@Test
	public void testHasmember(){
		
	}
	

}
