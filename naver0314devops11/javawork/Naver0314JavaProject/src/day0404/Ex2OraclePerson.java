package day0404;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Ex2OraclePerson {
	static final String ORACLE_DRIVER="oracle.jdbc.OracleDriver";
	static final String ORACLE_URL="jdbc:oracle:thin:@localhost:1521/xe";
	static final String USERNAME="angel";
	static final String PASSWORD="a1234";

	public Ex2OraclePerson() {

		try {
			Class.forName(ORACLE_DRIVER);
			System.out.println("성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("실패");
		}

	}
	static public void showTitle()
	{
		System.out.println("=".repeat(40));
		System.out.println("시퀀스\t이름\t혈액형\t나이\t입사일");
		System.out.println("=".repeat(40));
	}

	public void writePerson()
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		//sql 문장이 길 경우 자바텍스트블록을 사용(""" 따옴표3개): JDK15 부터 가능
		String sql="""
				
				select pnum,pname,upper(pblood) pblood,page,to_char(ipsaday,'yyyy-mm-dd') ipsaday from person
				""";
		//String sql="select pnum,pname,upper(pblood) pblood,page,to_char(ipsaday,'yyyy-mm-dd') ipsaday from person";
		try {
			conn=DriverManager.getConnection(ORACLE_URL, USERNAME, PASSWORD);
			showTitle();

			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);

			while(rs.next())
			{
				String pnum=rs.getString("pnum");
				String pname=rs.getString("pname");
				String pblood=rs.getString("pblood");
				int page=rs.getInt("page");
				String ipsaday=rs.getString("ipsaday");

				System.out.println(pnum+"\t"+pname+"\t"+pblood+"\t"+page+"세\t"+ipsaday);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("실패");
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}



	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ex2OraclePerson ex2=new Ex2OraclePerson();
		ex2.writePerson();
	}

}
