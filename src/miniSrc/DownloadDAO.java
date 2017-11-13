package miniSrc;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import miniSrc.DownloadVO;



public class DownloadDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public DownloadDAO() {
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
	public ArrayList<DownloadVO> list()
	{
		ArrayList<DownloadVO> res =new ArrayList<>();

		try {
			sql = "select * from download order by id desc";
			
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				DownloadVO vo = new DownloadVO();
				
				vo.setId(rs.getInt("id"));
				vo.setTitle(rs.getString("title"));
				vo.setRegDate(rs.getTimestamp("reg_date"));
				
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
	
	
	public DownloadVO detail(String id)
	{
		DownloadVO res =null;

		try {
			sql = "select * from download where id = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new DownloadVO();
				
				res.setId(rs.getInt("id"));
				res.setTitle(rs.getString("title"));
				res.setUpdownfile(rs.getString("updownfile"));
				res.setOridown(rs.getString("oridown"));
				res.setContent(rs.getString("content"));
				res.setRegDate(rs.getTimestamp("reg_date"));

				
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public void insert(DownloadVO mem )
	{
		try {
			
			sql = "select max(id)+1 from download";
			
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
				mem.setId(rs.getInt(1));
			
			
			sql = "insert into download (id, pw, title, "
					+ "content,  reg_date, updownfile, oridown) values ("
					+ "?,?,?,?,sysdate,?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getId());
			stmt.setString(2, mem.getPw());
			stmt.setString(3, mem.getTitle());
			stmt.setString(4, mem.getContent());
			stmt.setString(5, mem.getUpdownfile());
			stmt.setString(6, mem.getOridown());
			
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	

	public boolean delete(DownloadVO mem )
	{
		boolean res = false;
		try {
			
			sql = "select * from download where id=?"; 
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getId());
			rs = stmt.executeQuery();
			if(rs.next())
				mem.setUpdownfile(rs.getString("updownfile"));
			
			sql = "delete from download where id=? and pw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getId());
			stmt.setString(2, mem.getPw());
		
			if(stmt.executeUpdate()>0)
			{	
				res = true;
				new PicFilee().fileDelete(mem);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	
	public boolean modify(DownloadVO mem )
	{
		boolean res = false;
		try {
			
			
			sql = "update download set  title = ?, content = ?, updownfile=?, oridown=?"
				+ " where id=? and pw = ?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,mem.getTitle());
			stmt.setString(2, mem.getContent());
			stmt.setString(3, mem.getUpdownfile());
			stmt.setString(4, mem.getOridown());
			stmt.setInt(5, mem.getId());
			stmt.setString(6, mem.getPw());
			System.out.println(mem.getUpdownfile());
			System.out.println(mem.getOridown());
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
	
	public boolean fileDelete(DownloadVO mem, HttpServletRequest request )
	{
		boolean res = false;
		try {
			sql = "select * from download where id = ? and pw = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, mem.getId());
			stmt.setString(2, mem.getPw());
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				String upfile = request.getRealPath("downloadfile");
				upfile = "C:\\Users\\user\\Documents\\ggg\\miniProj\\WebContent\\kbj\\download\\downloadfile";
				
				File delFile = new File(upfile+"\\"+rs.getString("updownfile"));
				delFile.delete();
				
				sql = "update download set  updownfile = '' , oridown='' "
					+ " where id=?";
			
				stmt = con.prepareStatement(sql);
				
				stmt.setInt(1, mem.getId());
				
				
				System.out.println(sql);
				if(stmt.executeUpdate()>0)
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
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}

