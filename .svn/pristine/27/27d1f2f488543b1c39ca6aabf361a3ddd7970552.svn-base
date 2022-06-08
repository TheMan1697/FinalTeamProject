package works.yermi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import works.yermi.domain.RoomVO;
import works.yermi.mapper.RoomMapper;

@Service @AllArgsConstructor
public class RoomServiceImpl implements RoomService {
	private RoomMapper mapper;

	@Override
	public List<RoomVO> getList(String pensionid) {
		// TODO Auto-generated method stub
		return mapper.getList(pensionid);
	}

	@Override
	public RoomVO get(Long roomNum) {
		// TODO Auto-generated method stub
		return mapper.read(roomNum);
	}

	@Override
	public int register(RoomVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public boolean modify(RoomVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo) > 0;
	}

	@Override
	public boolean remove(Long roomNum) {
		// TODO Auto-generated method stub
		return mapper.delete(roomNum)> 0;
	}

}
