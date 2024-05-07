package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.MemoDto;
import data.dto.WhatDto;
import db.common.MySQLConnect;

public class WhatDao {
	MySQLConnect db=new MySQLConnect();

	//추가
	public void insertWhat(WhatDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into mbti (ID,PW,mbti,uploadphoto,title,content,writeday) values (?,?,?,?,?,?,now())";

		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getID());
			pstmt.setString(2, dto.getPW());
			pstmt.setString(3, dto.getMbti());
			pstmt.setString(4, dto.getUploadPhoto());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getContent());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	//출력
	public List<WhatDto> getAllWhat()
	{
		List<WhatDto> list=new Vector<WhatDto>();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from mbti order by num desc";

		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				WhatDto dto=new WhatDto();
				
				dto.setID(rs.getString("ID"));
				dto.setPW(rs.getString("PW"));
				dto.setUploadPhoto(rs.getString("uploadphoto"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteday(rs.getTimestamp("writeday"));

				list.add(dto);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		return list;
	}

	//상세보기
	public WhatDto getData(int num)
	{
		WhatDto dto=new WhatDto();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from mbti where =?";

		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setInt(1,num);
			//실행
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setID(rs.getString("ID"));
				dto.setPW(rs.getString("PW"));
				dto.setUploadPhoto(rs.getString("uploadphoto"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		return dto;
	}
}

