package works.yermi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import works.yermi.domain.RoomAttachVO;

public interface RoomAttachMapper {
	@Insert("INSERT INTO TBL_ROOM_ATTACH VALUES(#{uuid}, #{origin},#{path}, #{image},#{ord}, #{rno})")
	void insert(RoomAttachVO vo);
	
	@Delete("DELETE TBL_ROOM_ATTACH WHERE UUID = #{uuid}")
	void delete(String uuid);
	
	@Delete("DELETE TBL_ROOM_ATTACH WHERE bno = #{rno}")
	void deleteAll(Long rno);
	
	@Select("SELECT * FROM TBL_ROOM_ATTACH WHERE rNO = #{rno}")
	List<RoomAttachVO> findBy(Long rno);
	
	@Select("SELECT * FROM TBL_ROOM_ATTACH WHERE PATH = TO_CHAR(SYSDATE-1, 'YYYY/MM/DD')")
	List<RoomAttachVO> getOldFiles();
}
