package day0520.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import day0520.dto.FoodDto;

@Controller
public class Form3WriteController {
	@PostMapping("/read3")
	public String read3(
			//폼태그에서 같은 이름을 자동으로 읽어온다
			//Model 에 foodDto 라는 이름으로 저장이 된다
			//@ModelAttribute FoodDto dto 
			//dto 클래스명이 너무 긴경우 간단하게 모델에 저장 result3 다 fooddto가 fdto로 변경해줘야함
			@ModelAttribute("fdto") FoodDto dto 
			
			//@ModelAttribute 생략가능
			//FoodDto dto //이렇게도 사용가능
			)
	{
		
	return "form3/result3";	
	}
}
