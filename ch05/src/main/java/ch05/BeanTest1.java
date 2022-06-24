package ch05;

public class BeanTest1 {
	private String name;
	
//변수만 만들어주고 제너레이트 하면 자동으로 생성됨
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
