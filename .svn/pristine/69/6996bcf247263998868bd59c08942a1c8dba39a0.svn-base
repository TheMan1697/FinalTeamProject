package works.yermi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import works.yermi.domain.CriteriaPension;
import works.yermi.domain.PensionVO;

public interface PensionMapper {
	
	public List<PensionVO> getList();
	
	public List<PensionVO> getListWithPaging(@Param("cri") CriteriaPension cri);
	
	public PensionVO read(Long pensionid);
	
	public int insert(PensionVO vo);
	
	public int insertpensionfilter(PensionVO vo);
	
	public int update(PensionVO vo);
	
	public int delete(Long pensionid);
	
}
