package miniSrc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class DownloadVO {
	
	String pw,title,content,updownfile,oridown,path;
	
	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	Integer id;
	
	Date regDate;
	
	public boolean isImgChk() {
		
		boolean res = false; 
		
		ArrayList<String>imgArr = new ArrayList<>();
		imgArr.add("jpg");
		imgArr.add("jpeg");
		imgArr.add("bmp");
		imgArr.add("gif");
		imgArr.add("png");
		
		if(updownfile!=null && !updownfile.equals("")&& !updownfile.equals("null"))
		{
			String ext = updownfile.toLowerCase().substring(updownfile.lastIndexOf(".")+1);
			res = imgArr.contains(ext);
		}
		
		
		return res;
	}



	public String getUpdownfile() {
		return updownfile;
	}



	public void setUpdownfile(String updownfile) {
		this.updownfile = updownfile;
	}



	public String getOridown() {
		return oridown;
	}



	public void setOridown(String oridown) {
		this.oridown = oridown;
	}



	public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
	}
	
	
	
	public void parseRegDate(String strRegDate)
	{
		try {
			regDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strRegDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	

	public String getContent() {
		return content;
	}
	
	public String getContentBr() {
		return content.replaceAll("\r\n", "<br>") ;
	}

	public void setContent(String content) {
		this.content = content;
	}



	public String getPw() {
		return pw;
	}



	public void setPw(String pw) {
		this.pw = pw;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}





	
	
	
}
