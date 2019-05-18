package edu.autocar.socket.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message {
	private String msgType;	// 메시지 종류
	private int target;		// 대상
	private int connected;	// 접속 여부
	private int isAutoMode;	// 자율주행 모드 여부
	private String direction;	// 방향
	private String content;		// log
	
}
