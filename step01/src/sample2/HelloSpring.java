package sample2;

public class HelloSpring {
	public static void main(String[] args) {
		MessageBean bean = new MessageBeanKr();   //영어로 바꾸고 싶으면 MessageBeanKr->MessageBeanEn으로 바꿈
		bean.sayHello();
	}
}
