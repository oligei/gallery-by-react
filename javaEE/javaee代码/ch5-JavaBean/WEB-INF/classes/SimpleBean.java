package ch5.demo1;
public class SimpleBean {
	private String name ;
	private int age ;
	public SimpleBean(){
		System.out.println("constructing!");
	}
	public SimpleBean(String name,int age){
		this.name=name;
		this.age=age;
		System.out.println("========== һ���µ�ʵ����������� =========");
	}
	public void setName(String name){
		System.out.println("setName called!");
		this.name = name ;
	}
	public void setAge(int age){
		System.out.println("setName called!");
		this.age = age ;
	}
	public String getName(){
		return this.name ;
	}
	public int getAge(){
		return this.age ;
	}
}