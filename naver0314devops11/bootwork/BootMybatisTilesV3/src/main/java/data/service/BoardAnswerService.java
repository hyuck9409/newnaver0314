package data.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.BoardAnswerDto;
import data.mapper.BoardAnswerMapperInter;

@Service
public class BoardAnswerService {
	
	@Autowired
	private BoardAnswerMapperInter anInter;
	
	public void insertAnswer(BoardAnswerDto dto)
	{
		anInter.insertAnswer(dto);
	}
	
	public List<BoardAnswerDto> getAnswerData(int num)
	{
		return anInter.getAnswerData(num);
	}
	
	public void deleteAnswer(int aidx)
	{
		anInter.deleteAnswer(aidx);
	}
	
	
}
