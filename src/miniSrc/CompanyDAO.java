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
				vo.setCom_Email(rs.getString("com_Email"));
				
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
				res.setEnroll_Num(rs.getString("enroll_Num"));
				res.setInfo(rs.getString("info"));
				res.setCharger(rs.getString("charger"));
				res.setChar_Phone(rs.getString("char_Phone"));
				res.setCom_Phone(rs.getString("com_Phone"));
				res.setCom_Address(rs.getString("com_Address"));
				res.setCom_Email(rs.getString("com_Email"));
				res.setHomepage(rs.getString("homepage"));
				res.setCom_Proj(rs.getString("com_Proj"));
				res.setLogo(rs.getString("logo"));
				res.setFound_Day(rs.getString("found_Day"));
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
			
			sql = "insert into Company ( com_id, com_pw, com_name, represent, enroll_Num" + 
					"	, info, charger, char_Phone, com_Phone, com_Address," + 
					"	com_Email, homepage, com_Proj, logo, found_Day)"
					+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
		
			stmt.setString(1, vo.getCom_id());
			stmt.setString(2, vo.getCom_pw());
			stmt.setString(3, vo.getCom_name());
			stmt.setString(4, vo.getRepresent());
			stmt.setString(5, vo.getEnroll_Num());
			stmt.setString(6, vo.getInfo());
			stmt.setString(7, vo.getCharger());
			stmt.setString(8, vo.getChar_Phone());
			stmt.setString(9, vo.getCom_Phone());
			stmt.setString(10, vo.getCom_Address());
			stmt.setString(11, vo.getCom_Email());
			stmt.setString(12, vo.getHomepage());
			stmt.setString(13, vo.getCom_Proj());
			stmt.setString(14, vo.getLogo());
			stmt.setString(15, vo.getFound_Day());
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
			
			sql = "update company values"
					+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
	
			stmt.setString(1, vo.getCom_id());
			stmt.setString(2, vo.getCom_pw());
			stmt.setString(3, vo.getCom_name());
			stmt.setString(4, vo.getRepresent());
			stmt.setString(5, vo.getEnroll_Num());
			stmt.setString(6, vo.getInfo());
			stmt.setString(7, vo.getCharger());
			stmt.setString(8, vo.getChar_Phone());
			stmt.setString(9, vo.getCom_Phone());
			stmt.setString(10, vo.getCom_Address());
			stmt.setString(11, vo.getCom_Email());
			stmt.setString(12, vo.getHomepage());
			stmt.setString(13, vo.getCom_Proj());
			stmt.setString(14, vo.getLogo());
			stmt.setString(15, vo.getFound_Day());
			
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
	
	/* ��������� ����� �޴� ������Ʈ ��ü ������ �����ö�
	 * sql = "select * from Project "
			+ "where = (select p_id from mem_pro where com_id=?)";*/
	//ȸ������� ȸ�簡 �� ������Ʈ �̸� ���� �����ö�
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
	//������Ʈ������ ������Ʈ ���� �ο����� ������
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
	public void close(){
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
