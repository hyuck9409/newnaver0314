package day0408;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		int a,d;
		int b=0,c=0,e=0,f=0;
		int S=sc.nextInt();
		a=S/100;
		b=S/10;
		b=b%10;
		c=S%10;
		
	int T=sc.nextInt();
	d=T/100;
	e=T/10;
	e=e%10;
	f=T%10;
	
//		A=(100*a+10*b+c);
//		System.out.println(A+".....(1)");
//		B=(100*d+10*e+f);
//		System.out.println(B+".....(2)");
		
		
		System.out.println(S*f);
		System.out.println((S*e));
		System.out.println((S*d));
		
		System.out.println(S*T);
	}

}
