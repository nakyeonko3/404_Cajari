package domain;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReviewWriteDTO {
	private int id; // t404_review_write id
//	private UserDTO user; // t404_user id
//	private ParkingDTO parking; // t404_parkinglot
	private String subject; // t404_review_write subject
	private String content; // t404_review_write content
	private int viewcnt; // t404_review_write viewcnt
	private LocalDateTime regDate; // t404_review_write regdate
	
	public String getRegDateTime() {
		if(this.regDate == null) return "";
		return this.regDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
	}
}