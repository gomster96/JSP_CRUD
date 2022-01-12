package member;

public class Student{
	
	private String name;
	private int number;
	private int age;
	private int id = 0;
	
	public Student() {
		
	}
	
	public Student(String name, int number, int age) {
		this.name = name;
		this.number = number;
		this.age = age;
	}
	public Student(int id, String name, int number, int age) {
		this.id = id;
		this.name = name;
		this.number = number;
		this.age = age;
	}
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return this.name;
	}
	public int getNumber() {
		return this.number;
	}
	public int getAge() {
		return this.age;
	}
}