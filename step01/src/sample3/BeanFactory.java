package sample3;
//요청정보에 따라서 객체를 만들어서 리턴하는 것
public class BeanFactory {
	public MessageBean getBean(String beanName) {
		MessageBean bean = null;
		if(beanName.equals("en")) {
			bean = new MessageBeanEn();
		}else if(beanName.equals("kr")) {
			bean = new MessageBeanKr();
		}
		return bean;
	}
}
