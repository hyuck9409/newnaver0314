package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	@NonNull
	private MemberMapperInter memInter;
	
	public int getTotalCount()
	{
		return memInter.getTotalCount();
	}
	public int getIdCheckCount(String searchid)
	{
		return memInter.getIdCheckCount(searchid);
	}
	
	public void insertMember(MemberDto dto)
	{
		memInter.insertMember(dto);
	}
	
	public List<MemberDto> getAllMembers()
	{
		return memInter.getAllMembers();
	}
	
	public MemberDto getData(int num)
	{
		return memInter.getData(num);
	}
	
	public MemberDto getDataById(String myid)
	{
		return memInter.getDataById(myid);
	}
	
	public void updatePhoto(int num,String photo)
	{
		Map<String, Object> map=new HashMap<>();
		map.put("num", num);
		map.put("photo", photo);
		memInter.updatePhoto(map);		
	}
	
	public int deleteMember(int num, String passwd)
	{
		Map<String, Object> map=new HashMap<>();	
		map.put("num", num);
		map.put("passwd", passwd);
		
		return memInter.deleteMember(map);
				
	}
	
	public boolean isLoginCheck(String myid,String pass) 
	{
		return memInter.isLoginCheck(myid, pass)==1?true:false;
	}
}