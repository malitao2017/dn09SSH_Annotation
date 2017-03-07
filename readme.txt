http://127.0.0.1:8080/dn09SSH_Annotation

ssh整合后，使用注解模式，进行组件扫描,进行bean和事务aop的操作
1.ssh.xml中配置组件扫描信息，相关的bean 和 事务处理
2.java代码中的bean的注解:(包-对应注解)
action-controller
service-service
dao-repository
注入使用
resource
3.事务处理
service.impl包中
trasactional

4.注解的核心是找成员变量或是 某一个方法的其中的变量
HibernateUserDAOImpl
/**
 * sessionFactory需要写程序 注入
 */
@Resource(name="mySessionFactory")
public void setMysf(SessionFactory mysf){
	super.setSessionFactory(mysf);
}




