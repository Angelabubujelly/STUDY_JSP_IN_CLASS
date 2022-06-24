<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*, java.io.*" %>
<%
String saveFolder = "D:/KJK/JSP_Workspace/ch08/src/main/webapp/filestorage";
String encType = "UTF-8";
/*최대 업로드 할 수 있는 용량...
5*키로바이트*메가바이트*/
int maxSize = 5*1024*1024;
try {																																//객체 생성하여 사용
	MultipartRequest multi = new MultipartRequest(request,saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
//폼 요소 중<input type="file">인 요소를 제외한 나머지 파라미터들의 이름을 얻어옴
Enumeration params = multi.getParameterNames();
	while(params.hasMoreElements()){
		String name = (String)params.nextElement();
		String value = multi.getParameter(name);
		out.print(name + " : " + value + "<p/>");
	}
	//폼 요소 중 <input type="file">인 요소만 가져오기
			Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = (String)files.nextElement();
			String filename = multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			out.print("파라미터 이름 : " + name +"<p/>");
			out.print("저장된 파일 이름 : " + filename + "<p/>");
			out.print("파일의 실제 이름 : " + original + "<p/>");
			out.print("파일 타입 " + type + "<p/>");
			if(f!=null)
				out.print("파일의 크기 : "+f.length()+"Byte");
		}
}catch (Exception e) {
	System.out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>