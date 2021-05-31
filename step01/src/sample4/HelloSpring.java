package sample4;

import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloSpring {
	public static void main(String[] args) {
		//스프링 컨테이너 구동
		GenericXmlApplicationContext context = new GenericXmlApplicationContext("sample4/bean.xml");
		
		//bean객체 얻기
		MessageBean bean = (MessageBean) context.getBean("messageBean");
		bean.sayHello();
		
		//스프링 컨테이너 종료
		context.close();
	}
}
