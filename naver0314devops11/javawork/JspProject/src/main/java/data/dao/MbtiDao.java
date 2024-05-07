package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.MbtiDto;
import data.dto.MemoDto;
import db.common.MySQLConnect;

public class MbtiDao {
	MySQLConnect db=new MySQLConnect();

	public void insertMbti(MbtiDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into mbti (id,pw,mymbti,uploadphoto,title,content,writeday) values (?,?,?,?,?,?,now())";

		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getMymbti());
			pstmt.setString(4, dto.getUploadphoto());
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
		public List<MbtiDto> getAllMbti()
		{
			List<MbtiDto> list=new Vector<MbtiDto>();
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="select * from mbti order by num desc";

			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					MbtiDto dto=new MbtiDto();
					dto.setNum(rs.getInt("num"));
					dto.setId(rs.getString("id"));
					dto.setPw(rs.getString("pw"));
					dto.setMymbti(rs.getString("mymbti"));
					dto.setUploadphoto(rs.getString("uploadphoto"));
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
		public MbtiDto getData(int num)
		{
			MbtiDto dto=new MbtiDto();
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="select * from mbti where num=?";

			try {
				pstmt=conn.prepareStatement(sql);
				//바인딩
				pstmt.setInt(1,num);
				//실행
				rs=pstmt.executeQuery();
				if(rs.next()) {
					dto.setNum(rs.getInt("num"));
					dto.setId(rs.getString("id"));
					dto.setPw(rs.getString("pw"));
					dto.setMymbti(rs.getString("mymbti"));
					dto.setUploadphoto(rs.getString("uploadphoto"));
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