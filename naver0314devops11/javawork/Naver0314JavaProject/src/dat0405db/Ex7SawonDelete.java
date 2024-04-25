package dat0405db;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Scanner;

public class Ex7SawonDelete {
	
	public void deleteSawon()
	{
		Scanner sc=new Scanner(System.in);
		String delName="";
		System.out.println("삭제할 이름을 입력하세요");
		sc.nextLine();
		
		String sql="delete from sawon where name=?";
				System.out.println(sql);
		
				Connection conn=null;
				Statement stmt=null;
				
				
				
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
