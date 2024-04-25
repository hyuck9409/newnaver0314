package dat0405db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Ex12Student {

	static final String MYSQL_DRIVER="com.mysql.cj.jdbc.Driver";
	static final String MYSQL_URL="jdbc:mysql://localhost:3306/bit701?serverTimezone=Asia/Seoul";
	static final String USERNAME="root";
	static final String PASSWORD="1234";

	public Ex12Student() {
		try {
			Class.forName(MYSQL_DRIVER);
			System.out.println("Mysql8 드라이버 성공!");
		} catch (ClassNotFoundException e) {
			System.out.println("Mysql8 드라이버 오류!"+e.getMessage());
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
	public void insertStudent(String name,int java,int html,int spring)
	{
		String sql="insert into student (name,java,html,spring,testday) values (?,?,?,?,now())";
		//db저장하는 코드 추가

		Connection conn=null;
		PreparedStatement pstmt=null;

		try {
			conn=DriverManager.getConnection(MYSQL_URL, USERNAME, PASSWORD);
			pstmt=conn.prepareStatement(sql);


			pstmt.setString(1, name);
			pstmt.setInt(2, java);
			pstmt.setInt(3, html);
			pstmt.setInt(4, spring);
			pstmt.execute();

			System.out.println(name+"님의 성적을 등록하였습니다");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}


	}

	public void deleteStudent(String name)
	{
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try 
		{
		conn=DriverManager.getConnection(MYSQL_URL, USERNAME, PASSWORD);
	
		String sql="delete from student where name=?";
		pstmt=conn.prepareStatement(sql);

		pstmt.setString(1,name);
		pstmt.execute();
		//삭제하는 db코드 추가
		//해당 학생이 없을경우 "xxx 님은 명단에 없어요!"
		//있을경우 "xxx 님의 성적정보를 삭제하였습니다"
		int n=pstmt.executeUpdate();

		if(n==0)
			System.out.println(name+"님의 정보를 삭제했습니다");
		else {
			System.out.println(name+"님의 정보가 없음");
			//수정됬는지 확인하기
			writeStudent();	

		}


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{	try {
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			
		}

	}

	public void writeStudent()
	{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="""
				select num,name,java,html,spring,
				java+html+spring tot, round((java+html+spring)/3,1) avg,
				date_format(testday,'%y-%m-%d %H:%i') testday
				from student
				""";

		try {
			conn=DriverManager.getConnection(MYSQL_URL, USERNAME, PASSWORD);
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("\t** Person Table**\n");
			System.out.println("시퀀스\t이름\t혈액형\t나이\t입사일");
			System.out.println("=".repeat(40));
			
			while(rs.next())
			{
				
				String name=rs.getString("name");
				String java=rs.getString("java");
				String html=rs.getString("html");
				String spring=rs.getString("spring");
				String tot=rs.getString("tot");
				Double avg=rs.getDouble("avg");
				String testday=rs.getString("testday");
				
				System.out.println(name+"\t"+java+"\t"+html+"\t"+spring+"\t"+tot+"\t"+avg+"\t"+testday);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		Ex12Student ex12=new Ex12Student();
		int menu=0;
		String name;
		int java,html,spring;

		while(true)
		{
			System.out.println("1.학생정보추가 2.이름으로삭제 3.전체출력 4.종료");
			menu=Integer.parseInt(sc.nextLine());
			if(menu==1) {
				System.out.println("추가할 이름은?");
				name=sc.nextLine();
				System.out.println("자바 점수는?");
				java=Integer.parseInt(sc.nextLine());
				System.out.println("HTML 점수는?");
				html=Integer.parseInt(sc.nextLine());
				System.out.println("Spring 점수는?");
				spring=Integer.parseInt(sc.nextLine());

				ex12.insertStudent(name, java, html, spring);
			} else if(menu==2)
			{
				System.out.println("삭제할 학생의 이름은?");
				name=sc.nextLine();
				ex12.deleteStudent(name);

			}else if(menu==3)
			{
				ex12.writeStudent();
			}else 
			{
				System.out.println("** 프로그램을 종료합니다 **");
				break;
			}
			System.out.println("-".repeat(30));

		}
	}

}
