package member;

import java.sql.*;
import java.util.*;
import member.Student;

public class StudentDAO {
	private static Connection conn = null;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
//	private static ArrayList<Student> list;
	
//	public StudentDAO() {
//		try {
//			String dbURL = "jdbc:mysql://localhost:3306/student";
//			String dbID = "root";
//			String dbPassword = "quddnd24";
//			Class.forName("com.mysql.jdbc.Driver");
//			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	public static Connection getConnection() {
		if(conn == null) {
			try {
				String dbURL = "jdbc:mysql://localhost:3306/student";
				String dbID = "root";
				String dbPassword = "quddnd24";
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
	
	public static ArrayList<Student> getAllRecords(){
		ArrayList<Student> list = new ArrayList<Student>();
		String SQL = "SELECT * FROM student";
		try {
			pstmt = getConnection().prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String studentName = rs.getString("name");
				int studentNumber = rs.getInt("student_number");
				int studentAge = rs.getInt("age");
				Student nextStudent = new Student(id, studentName, studentNumber, studentAge);
				list.add(nextStudent);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static int save(Student student) {
		String SQL = "INSERT INTO student(name, student_number, age) VALUES (?, ?, ?)";
		try {
			pstmt = getConnection().prepareStatement(SQL);
			pstmt.setString(1, student.getName());
			pstmt.setInt(2, student.getNumber());
			pstmt.setInt(3, student.getAge());
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //DB 오류
	}
	
	public static Student findById(int id) {
		String SQL = "SELECT * FROM student WHERE id=?";
		Student student;
		try {
			pstmt = getConnection().prepareStatement(SQL);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int studentId = rs.getInt("id");
				String studentName = rs.getString("name");
				int studentNumber = rs.getInt("student_number");
				int studentAge = rs.getInt("age");
				student = new Student(id, studentName, studentNumber, studentAge);
				return student;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return new Student();
	}
	public static int update(Student student) {
		String SQL = "UPDATE student SET name=?, student_number=?, age=? WHERE id=?";
		try {
			pstmt = getConnection().prepareStatement(SQL);
			pstmt.setString(1, student.getName());
			pstmt.setInt(2, student.getNumber());
			pstmt.setInt(3, student.getAge());
			pstmt.setInt(4, student.getId());
			
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //DB 오류
	}
	
	public static int delete(int id) {
		String SQL = "DELETE from student where id=?";
		try {
			pstmt = getConnection().prepareStatement(SQL);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //DB 오류
	}
}
