package works.yermi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import works.yermi.domain.CriteriaPension;
import works.yermi.domain.PensionVO;
import works.yermi.mapper.PensionMapper;

@Service @AllArgsConstructor
public class PensionServiceImpl implements PensionService {
	private PensionMapper mapper;
	
	@Override
	public List<PensionVO> getList(CriteriaPension cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public PensionVO get(Long pensionid) {
		// TODO Auto-generated method stub
		return mapper.read(pensionid);
	}

	@Override
	public int register(PensionVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public boolean modify(PensionVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo) > 0;
	}

	@Override
	public boolean remove(Long pensionid) {
		// TODO Auto-generated method stub
		return mapper.delete(pensionid) > 0;
	}
}
