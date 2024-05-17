package anno.study.ex6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex6Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context=new ClassPathXmlApplicationContext("appex5.xml");
		ShopController shopCont=(ShopController)context.getBean("shopcont");
		shopCont.insert("¹»±î¿ë",2,25000);
		System.out.println("-".repeat(30));
		shopCont.delete("ÀÌ°Ç¹»±î¿ë");
		System.out.println("-".repeat(30));
		shopCont.update("¾ê´Â¶Ç¹»±î¿ë",1,120000);
		
	}

}
