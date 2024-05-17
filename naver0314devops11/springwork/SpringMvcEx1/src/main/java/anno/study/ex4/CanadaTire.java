package anno.study.ex4;

import org.springframework.stereotype.Component;

@Component  //xml ¿¡ canadaTire ·Î µî·Ï
public class CanadaTire implements Tire{
	@Override
	public String getTireName() {
		// TODO Auto-generated method stub
		return "캐나다타이어";
	}
}	