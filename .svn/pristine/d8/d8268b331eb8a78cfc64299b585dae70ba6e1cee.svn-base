package works.yermi.domain;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("room")
public class RoomVO {
	private String pensionid;
	private Long roomNum;
	private String startTime;
	private String deadline;
	private boolean reservationStatus;
	private Long price;
	private boolean enabled;
	private String roomName;
	
	List<RoomAttachVO> attachs = new ArrayList<>();
}
