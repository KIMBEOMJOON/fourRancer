<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="loginPage.jsp" %>
<%
	request.setCharacterEncoding("EUC-KR");

	LinkedHashMap<String, String>top_lower = new LinkedHashMap();

	String nowUri = request.getRequestURI().substring(
			(request.getContextPath()+"/fourRancer/").length(),
			request.getRequestURI().length()-4
			);
	String [] cate=nowUri.split("/");
	
	String nowUrl = nowUri+".jsp";
	
	if(request.getParameter("id")!=null)
	{
		nowUrl+="?id="+request.getParameter("id");
	}
	
	System.out.println("uri:"+nowUri);
	System.out.println("url:"+nowUrl);

	String menuParam = cate[0];
	String main = cate[1];
	String service = cate[2];
	
	String serviceUrl = menuParam+"/"+service+".jsp";
	
	/* if(menuParam.equals("info"))
	{
		serviceUrl = menuParam+"/"+main+".jsp";
	} */
	
	request.setAttribute("nowUrl", nowUrl);
	request.setAttribute("cate", main);
	request.setAttribute("serviceUrl", serviceUrl);
	
	System.out.print("���� serviceUrl:"+serviceUrl);
	
	top_lower.put("projectSearch","������Ʈ���");
	top_lower.put("freelancerSearch","���������˻�");
	top_lower.put("mypage","����������");
	top_lower.put("cs","��������");
	
	LinkedHashMap<String, String>bottom = new LinkedHashMap();
	
	bottom.put("introduce","ȸ��Ұ�");
	bottom.put("access","���ô±�");
	bottom.put("recruit","ä�����");
	
	LinkedHashMap<String, String>submenu2 = new LinkedHashMap();
	
	submenu2.put("gongji","��������");
	submenu2.put("qna","QnA");
	submenu2.put("fnq","FnQ");
	submenu2.put("downboard","�ʼ��Խ���");
	
	HashMap<String,LinkedHashMap<String, String>>menu = new HashMap();
	
	LinkedHashMap<String, String>submenu1 = new LinkedHashMap();
	
	submenu1.put("resumeManager","����������");
	submenu1.put("projectInform","������Ʈ����");
	submenu1.put("privateManager","������������");
	submenu1.put("toCom","�����");
	submenu1.put("projectManager","������Ʈ����");
	submenu1.put("comInformManager","�����������");
	submenu1.put("toFree","����������");
	submenu1.put("levelSearch","�����ȸ");
		
	LinkedHashMap<String, String> menuList = menu.get(menuParam); 
	
	request.setAttribute("submenu2", submenu2);
	request.setAttribute("submenu1", submenu1);
	request.setAttribute("top_lower", top_lower);
	request.setAttribute("bottom", bottom);
/* 	request.setAttribute("menuList", menuList); */
	
	
%>

