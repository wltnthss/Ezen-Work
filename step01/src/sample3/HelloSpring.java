package sample3;

public class HelloSpring {
	public static void main(String[] args) {
		BeanFactory factory = new BeanFactory();
		MessageBean bean = factory.getBean("en");   //한글버전으로 바꾸고 싶으면 en->kr
		bean.sayHello();
	}
}
