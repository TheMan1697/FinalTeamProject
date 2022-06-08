package works.yermi.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import works.yermi.domain.ReplyVO;
import works.yermi.mapper.PensionMapper;
import works.yermi.mapper.ReplyMapper;

@Service @AllArgsConstructor
public class ReplyServiceImpl implements ReplyService{
	private ReplyMapper mapper;
	private PensionMapper pensionMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertSelectKey(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		// TODO Auto-generated method stub
		return mapper.read(rno);
	}

	@Override
	public boolean modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo) > 0;
	}
	
	@Override
	public int remove(Long rno) {
		// TODO Auto-generated method stub
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(String pensionid) {
		// TODO Auto-generated method stub
		return mapper.getList(pensionid);
	}

	@Override
	public List<ReplyVO> getListByUser(String userid) {
		// TODO Auto-generated method stub
		return mapper.get(userid);
	}
}
