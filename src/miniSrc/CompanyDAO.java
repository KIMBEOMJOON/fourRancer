package miniSrc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CompanyDAO {

	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public CompanyDAO() {
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
	
	public ArrayList<CompanyVO> list()
	{
		ArrayList<CompanyVO> res =new ArrayList<>();

		try {
			sql = "select * from company";
			
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				CompanyVO vo = new CompanyVO();
				
				vo.setCom_id(rs.getString("com_Id"));
				vo.setCom_email(rs.getString("com_Email"));
				
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
	
	
	public CompanyVO detail(String com_id)
	{
		CompanyVO res =null;

		try {
			sql = "select * from Company where com_id = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, com_id);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new CompanyVO();
				
				/*stmt.setString(1, vo.getCom_id());
				stmt.setString(2, vo.getCom_pw());
				stmt.setString(3, vo.getCom_name());
				stmt.setString(4, vo.getRepresent());
				stmt.setString(5, vo.getEnroll_Num());
				stmt.setString(6, vo.getInfo());
				stmt.setString(7, vo.getCharger());
				stmt.setString(8, vo.getChar_Phone());
				stmt.setString(9, vo.getChar_Phone());
				stmt.setString(10, vo.getCom_Address());
				stmt.setString(11, vo.getCom_Email());
				stmt.setString(12, vo.getHomepage());
				stmt.setString(13, vo.getCom_Proj());
				stmt.setString(14, vo.getLogo());
				stmt.setString(15, vo.getFound_Day());*/
				
				res.setCom_id(rs.getString("com_id"));
				res.setCom_pw(rs.getString("com_pw"));
				res.setCom_name(rs.getString("com_name"));
				res.setRepresent(rs.getString("represent"));
				res.setEnroll_num(rs.getString("enroll_num"));
				res.setInfo(rs.getString("info"));
				res.setCharger(rs.getString("charger"));
				res.setChar_phone(rs.getString("char_phone"));
				res.setCom_phone(rs.getString("com_phone"));
				res.setCom_address(rs.getString("com_address"));
				res.setCom_email(rs.getString("com_email"));
				res.setHomepage(rs.getString("homepage"));
				res.setCom_proj(rs.getString("com_proj"));
				res.setLogo(rs.getString("logo"));
				res.setFound_day(rs.getString("found_day"));
			/*	res.setContent(rs.getString("content"));
				res.setRegDate(rs.getTimestamp("reg_date"));
				res.setBirth(rs.getDate("birth"));
				res.setGrade(rs.getInt("grade"));*/
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public CompanyVO login(CompanyVO vo)
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
	
	
	public void insert(CompanyVO vo )
	{
		try {
			
			sql = "insert into company (com_id, com_pw, com_name, represent, enroll_num" + 
					"	, info, charger, char_phone, com_phone, com_address," + 
					"	com_email, homepage, com_proj, logo, found_day)"
					+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
		
			stmt.setString(1, vo.getCom_id());
			stmt.setString(2, vo.getCom_pw());
			stmt.setString(3, vo.getCom_name());
			stmt.setString(4, vo.getRepresent());
			stmt.setString(5, vo.getEnroll_num());
			stmt.setString(6, vo.getInfo());
			stmt.setString(7, vo.getCharger());
			stmt.setString(8, vo.getChar_phone());
			stmt.setString(9, vo.getCom_phone());
			stmt.setString(10, vo.getCom_address());
			stmt.setString(11, vo.getCom_email());
			stmt.setString(12, vo.getHomepage());
			stmt.setString(13, vo.getCom_proj());
			stmt.setString(14, vo.getLogo());
			stmt.setString(15, vo.getFound_day());
			//stmt.setString(8, mem.strRegDate());
			//stmt.setInt(8, mem.getGrade());
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	public boolean delete(CompanyVO mem ){
		boolean res = false;
		try {
			
			sql = "delete from company where com_id = ? and com_pw = ?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, mem.getCom_id());
			stmt.setString(2, mem.getCom_pw());
			
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
	
	
	   public boolean modify(CompanyVO vo )
	   {
	      boolean res = false;
	      try {
	         
	         sql = "update company set com_name=?, found_day=?,"
	         		+ "represent=?, enroll_num=?, logo=?,info=?,"
	         		+ "charger=?,char_phone=?, com_phone=?, com_address=?,"
	         		+ "com_email=?, homepage=?, com_proj=?"
	         		+ " where com_id =? and com_pw =?";
	         
	      
	         System.out.print("우호호호호"+vo.getCom_name());
	         stmt = con.prepareStatement(sql);
	         stmt.setString(1,vo.getCom_name());
	         stmt.setString(2,vo.getFound_day());
	         stmt.setString(3,vo.getRepresent());
	         stmt.setString(4,vo.getEnroll_num());
	         stmt.setString(5,vo.getLogo());
	         stmt.setString(6,vo.getInfo());
	         stmt.setString(7,vo.getCharger());
	         stmt.setString(8,vo.getChar_phone());
	         stmt.setString(9,vo.getCom_phone());
	         /*stmt.setString(10,mem.getPhoto());*/
	         stmt.setString(10,vo.getCom_address());
	         stmt.setString(11,vo.getCom_email());
	         stmt.setString(12,vo.getHomepage());
	         stmt.setString(13,vo.getCom_proj());
	         stmt.setString(14,vo.getCom_id());
	         stmt.setString(15,vo.getCom_pw());
	         
	         System.out.println(sql);
	         System.out.println(stmt.executeUpdate());
	         
	         if(stmt.executeUpdate()>0){
	            res = true;
	         }
	         
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return res;
	   }
	   
	/////////////////////

	   /* 기업명으로 기업이 햇던 프로젝트 전체 정보를 가져올때
		 * sql = "select * from Project "
				+ "where = (select p_id from mem_pro where com_id=?)";*/
		//회사명으로 회사가 한 프로젝트 이름 전부 가져올때
		public ArrayList<ProjectVO> comFindPro(String comId) {
			ArrayList<ProjectVO> pvolist = new ArrayList<>();
			try {
				sql = "select * from Project where com_id=?";
				stmt = con.prepareStatement(sql);
				stmt.setString(1, comId);
				rs = stmt.executeQuery();
				
				while(rs.next()){
					ProjectVO pvo = new ProjectVO();
					pvo.setP_id(rs.getString("p_id"));
					pvo.setCom_id(rs.getString("com_id"));
					pvo.setPro_subject(rs.getString("pro_subject"));
					pvo.setTerm(rs.getInt("term"));
					pvo.setRank(rs.getString("rank"));
					pvo.setInput_num(rs.getInt("INPUT_NUM"));
					pvo.setPro_salary(rs.getInt("PRO_SALARY"));
					pvolist.add(pvo);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			return pvolist;
		}
		//프로젝트명으로 프로젝트 참여 인원들을 가져옴
		public ArrayList<String> comCoruser(String pId) {
			ArrayList<String> res = new ArrayList<>();
			try {
				sql = "select user_id from mem_pro where p_id=?";
				stmt = con.prepareStatement(sql);
				stmt.setString(1, pId);
				rs = stmt.executeQuery();
				
				while(rs.next()){
					res.add(rs.getString("user_id"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			return res;
		}
		//개인회원 아이디와 프로젝트 명을 받아서 삭제
		public boolean gradeDelete(String userId, String pId) {
			boolean res = false;
			try {
				
				sql = "delete from person_grade where user_id = ? and p_id = ?";
				stmt=con.prepareStatement(sql);
				stmt.setString(1, userId);
				stmt.setString(2, pId);
				
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
	   
	////////////////////////   
	public void close(){
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
