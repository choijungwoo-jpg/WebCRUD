package com.kb.jw.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class MemBerDTO {
	private int midx;
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private String email;
	private String rgdate;
	private String title;
	private String content;
}

