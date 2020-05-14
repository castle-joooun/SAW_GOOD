package com.saw.good.funding.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FDReword {

	int fdNo;
	String reword;
	int minimum;
}