package miniSrc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import miniSrc.PersonVO;

public class PersonDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "1234";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public PersonDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//전체 회원의 전체 정보
	public ArrayList<PersonVO> list()
	{
		ArrayList<PersonVO> res =new ArrayList<>();

		try {
			sql = "select * from person";
			stmt=con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				PersonVO vo = new PersonVO();
				
				vo.setUser_id(rs.getString("user_id"));
				vo.setUser_email(rs.getString("user_email"));
				
				res.add(vo);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	//아이디로 개인정보 불러오기
	public PersonVO detail(String user_id)
	{
		PersonVO res =null;

		try {
			sql = "select * from person where user_id = ?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, user_id);
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new PersonVO();
				
				res.setUser_id(rs.getString("user_id"));
				res.setUser_name(rs.getString("user_name"));
				res.setUser_email(rs.getString("user_email"));
				res.setUser_phone(rs.getString("user_phone"));
				res.setGender(rs.getString("gender"));
				res.setBirth(rs.getDate("birth"));
				res.setPhoto(rs.getString("photo"));
				res.setDevelopment(rs.getString("development"));
				res.setDesign(rs.getString("design"));
				res.setSpecialty(rs.getString("specialty"));
				res.setPlanning(rs.getString("planning"));
				res.setLocation(rs.getString("location"));
				res.setPortfoliofile(rs.getString("portfoliofile"));
			}
		
		
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public PersonVO search(String specialty)
	{
		PersonVO res =null;

		try {
			sql = "select * from person where specialty LIKE ?";
			System.out.print("여기!!!!!!!!!"+sql);
			
			stmt=con.prepareStatement(sql);
			stmt.setString(1, specialty);
			System.out.print("stmt"+stmt);
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new PersonVO();
				
				res.setUser_id(rs.getString("user_id"));
				/*res.setUser_name(rs.getString("user_name"));
				res.setUser_email(rs.getString("user_email"));
				res.setUser_phone(rs.getString("user_phone"));
				res.setLocation(rs.getString("location"));*/
				/*res.setPortfoliofile(rs.getString("portfoliofile"));*/
			}
		
		
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public CompanyVO login(CompanyVO vo)//넣을때 vo쓰나?
	{
		CompanyVO res =null;

		try {
			sql = "select * from company where com_id = ? and com_pw = ?";
		
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, vo.getCom_id());
			stmt.setString(2, vo.getCom_pw());
			/*stmt.setString(3, vo.getCom_name());*/
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new CompanyVO();
				
				res.setCom_id(rs.getString("com_id"));	
				res.setCom_pw(rs.getString("com_pw"));	
				res.setCom_name(rs.getString("com_name"));			
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	
	//회원가입시 필요한 쿼리문
	public void insert(PersonVO mem ){
		try {
	

			
			sql = "insert into person (user_id,user_pw,user_name,user_phone, gender, user_email,birth, photo,development,design,planning,specialty,location,portfoliofile) values (" 
					+"?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
			System.out.println(sql);
			stmt=con.prepareStatement(sql);
			stmt.setString(1,mem.getUser_id());
			stmt.setString(2,mem.getUser_pw());
			stmt.setString(3, mem.getUser_name());
			stmt.setString(4, mem.getUser_phone());
			stmt.setString(5, mem.getGender());
			stmt.setString(6, mem.getUser_email());
			stmt.setString(7,mem.strBirth());
			stmt.setString(8,mem.getPhoto());
			stmt.setString(9,mem.getDevelopment());
			stmt.setString(10,mem.getDesign());
			stmt.setString(11,mem.getPlanning());
			stmt.setString(12,mem.getSpecialty());
			stmt.setString(13,mem.getLocation());
			stmt.setString(14,mem.getPortfoliofile());
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	//회원 삭제 ---미완성같아보임
	public boolean delete(PersonVO mem ){
		boolean res = false;
		try {
			
			sql = "delete from person where id=? and pw = ?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, mem.getUser_id());
			stmt.setString(2, mem.getUser_pw());
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	//회원정보 수정--이것도 미완
	public boolean modify(PersonVO mem ){
		boolean res = false;
		try {
			
			sql = "update person set gender = ?, email = ? , where user_id =? and user_pw =?";
			
			stmt = con.prepareStatement(sql);
	
			stmt.setString(1,mem.getGender() );
	
			stmt.setString(3, mem.getUser_email());
	
			stmt.setString(5,mem.getUser_id());
			stmt.setString(6, mem.getUser_pw());
			
			
		
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public boolean IDChecker(String User_id){
		boolean res=false;
		try{
			
			sql = "select * from person where User_id=?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, User_id);
			rs = stmt.executeQuery();
			
			if(rs.next()){
				res= true;
				System.out.println(res);
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			
			}
			return res;
			
		}
	
	//개인 아이디로 개발자 평균덕목 조회
	public void allGrade(String user_id){
		ArrayList<PersonVO> res =new ArrayList<>();
		int[] middle=new int[6];
		try {
			sql = "select avg(ability),avg(social),avg(diligent),"
				+ "avg(creativity),avg(sum),avg(avg) from person_grade"
				+ "where user_id=?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, user_id);
			rs = stmt.executeQuery();
			
			
			if(rs.next()){
				
				int[] middle2= { rs.getInt("ability"), rs.getInt("social"), rs.getInt("diligent")
				,rs.getInt("creativity"), rs.getInt("sum"), rs.getInt("avg")};
				middle=middle2;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		/*return res;*/
	}
	
	
	public void close(){
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
