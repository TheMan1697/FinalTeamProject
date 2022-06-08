package works.yermi.mapper;

import java.util.List;

import works.yermi.domain.AuthVO;
import works.yermi.domain.MemberVO;
import works.yermi.domain.Point_ActionVO;

public interface MemberMapper {
	// 회원 정보 조회
	MemberVO read(String userId);
	
	List<MemberVO> readList(); 
	
	// <회원가입>
	// 회원 생성
	int insertMember(MemberVO vo);
	// 권한 생성
	int insertAuth(AuthVO vo);
	
	// <회원정보수정>
	// 회원 수정
	int updateMember(MemberVO vo);
	// 권한 수정
	int updateAuth(AuthVO vo);
	
	// <회원탈퇴>
	// 회원 삭제
	int deleteMember(String userId);
	// 권한 삭제
	int deleteAuth(String userId);
	
	// <회원 존재여부 확인>
	MemberVO hasMember(MemberVO memberVO); 
	
	// <로그인>
	
	// <로그아웃>
	
	// 현재 포인트 조회
	Point_ActionVO readPoint(int point_num);
}
