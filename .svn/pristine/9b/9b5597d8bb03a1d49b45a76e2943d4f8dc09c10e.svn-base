package works.yermi.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import works.yermi.domain.AuthVO;
import works.yermi.domain.MemberVO;
import works.yermi.mapper.MemberMapper;

@Service @AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	private MemberMapper mapper;
	private PasswordEncoder encoder;
	
	@Override // 회원가입
	public void join(MemberVO vo) {
		vo.setPw(encoder.encode(vo.getPw()));
		mapper.insertMember(vo);
		AuthVO authVO = new AuthVO();
		authVO.setAuth("ROLE_MEMBER");
		authVO.setUserId(vo.getUserId());
		mapper.insertAuth(authVO);
	}

	@Override // 회원조회
	public MemberVO get(String userId) {
		return mapper.read(userId);
	}

	@Override // 회원 정보 수정
	public boolean modify(MemberVO memberVO) {
		memberVO.setPw(encoder.encode(memberVO.getPw()));
		return mapper.updateMember(memberVO) > 0;
	}

	@Override
	public boolean remove(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO hasMember(MemberVO memberVO) {
		return mapper.hasMember(memberVO);
	}
	
	
	
	
}
